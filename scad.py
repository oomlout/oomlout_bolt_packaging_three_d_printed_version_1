import copy
import opsc
import oobb
import oobb_base

clearance_design = 1
clearance_wall = 1/2
clearance_bottom = 1

width_hinge = 20
width_latch = 30
width_hinge_inside = width_hinge - 10
diameter_hinge_inside = 14
diameter_hinge_bottom = 12
diameter_latch_bottom = 15

thickness_lid_wall_exterior = 1.5
gap_between_lid_and_wall = 0.75
extra_lid_overhang = thickness_lid_wall_exterior + gap_between_lid_and_wall
depth_lid_overhang = 3


def main(**kwargs):
    make_scad(**kwargs)

def make_scad(**kwargs):
    parts = []

    run_fast = True
    #run_fast = False

    # save_type variables
    if True:
        filter = ""
        #filter = "main_body"
        #filter = "hinge"
        #filter = "lid"
        #filter = "latch"

        #kwargs["save_type"] = "none"
        kwargs["save_type"] = "all"
        
        kwargs["overwrite"] = True
        
        #kwargs["modes"] = ["3dpr", "laser", "true"]
        kwargs["modes"] = ["3dpr"]
        #kwargs["modes"] = ["laser"]

    # default variables
    if True:
        kwargs["size"] = "oobb"
        kwargs["width"] = 12
        kwargs["height"] = 12
        kwargs["thickness"] = 6

    # project_variables
    if True:
        pass
    
    # declare parts
    
    if True:

        part_default = {} 
        part_default["project_name"] = "oomlout_bolt_packaging_three_d_printed_version_1" ####### neeeds setting
        part_default["full_shift"] = [0, 0, 0]
        part_default["full_rotations"] = [0, 0, 0]
        

        sizes = []
        for i in range(1, 4):
            pass
            if not run_fast:
                sizes.append({"width": i, "height": i})        
                
        if not run_fast:
            sizes.append({"width": 5, "height": 2}) 
            sizes.append({"width": 4, "height": 2})
            sizes.append({"width": 2, "height": 1})
            sizes.append({"width": 3, "height": 2})             
            sizes.append({"width": 4, "height": 3})
        
        #sizes.append({"width": 2, "height": 1})             
        sizes.append({"width": 3, "height": 3})             
        

        
        


        trays = []
        trays.append({"width": 3, "height": 3})
        #trays.append({"width": 2, "height": 2})
        
        if not run_fast:
            trays.append({"width": 3, "height": 2})   
            trays.append({"width": 3, "height": 3})
        #thicknesses = [15]
        thicknesses = [20]
        if not run_fast:
            thicknesses.append(20)
        

        sizes_complete = []
        for size in sizes:
            for tray in trays:
                for thickness in thicknesses:
                    sizes_complete.append({"width": size["width"], "height": size["height"], "width_tray": tray["width"], "height_tray" : tray["height"], "thickness": thickness})


        for size in sizes_complete:
            part = copy.deepcopy(part_default)
            p3 = copy.deepcopy(kwargs)
            #p3["thickness"] = 6
            part["kwargs"] = p3
            w = size["width"]
            h = size["height"]
            p3["width"] = w
            p3["height"] =  h
            width_tray = size["width_tray"]
            p3["width_tray"] = width_tray
            height_tray = size["height_tray"]
            p3["height_tray"] = height_tray
            extra = f"tray_size_{width_tray}_wide_{height_tray}_high"
            
            width_full = w * width_tray
            p3["width_full"] = width_full
            width_full_mm = width_full * 15            
            p3["width_full_mm"] = width_full_mm            
            height_full = h * height_tray
            p3["height_full"] = height_full
            height_full_mm = height_full * 15
            p3["height_full_mm"] = height_full_mm
                    
            #main body variables
            width_tray_tray = w * width_tray
            p3["width_tray_tray"] = width_tray_tray
            width_tray_tray_mm = width_tray_tray * 15
            p3["width_tray_tray_mm"] = width_tray_tray_mm
            height_tray_tray = h * height_tray
            p3["height_tray_tray"] = height_tray_tray
            height_tray_tray_mm = height_tray_tray * 15
            p3["height_tray_tray_mm"] = height_tray_tray_mm  
            global clearance_wall
            default_shift_hinge = width_tray_tray_mm / 2 - width_hinge/2 + clearance_wall/2
            p3["shift_hinge"] = default_shift_hinge

            p3["extra"] = extra 
            p3["thickness"] = size["thickness"]
            part["name"] = "main_body"
            parts.append(part)

            part = copy.deepcopy(part)
            part["name"] = "lid"
            part["kwargs"]["thickness"] = 1 # depth_lid
            parts.append(part)

        part = copy.deepcopy(part_default)
        p3 = copy.deepcopy(kwargs)
        p3["thickness"] = 15
        p3["width"] = 1
        p3["height"] = 2
        part["kwargs"] = p3
        part["name"] = "hinge"
        parts.append(part)

        part = copy.deepcopy(part_default)
        p4 = copy.deepcopy(p3)
        p4["thickness"] = 20
        part["kwargs"] = p4
        part["name"] = "hinge"
        parts.append(part)

        part = copy.deepcopy(part_default)
        p3 = copy.deepcopy(kwargs)
        p3["thickness"] = 15
        p3["width"] = 1
        p3["height"] = 1
        part["kwargs"] = p3
        part["name"] = "latch"
        parts.append(part)


        
    #make the parts
    if True:
        for part in parts:
            name = part.get("name", "default")
            if filter in name:
                print(f"making {part['name']}")
                make_scad_generic(part)            
                print(f"done {part['name']}")
            else:
                print(f"skipping {part['name']}")

def get_latch(thing, **kwargs):  

    #adding variables
    global clearance_design
    kwargs["clearance_design"] = clearance_design
    global clearance_wall
    global width_hinge
    kwargs["width_hinge"] = width_hinge


    pos = kwargs.get("pos", [0, 0, 0])
    p3 = copy.deepcopy(kwargs)
    pos1 = copy.deepcopy(pos)
    #pos1[0] += 45
    p3["pos"] = pos1
    get_latch_bottom(thing, **p3)
    
    
    p3 = copy.deepcopy(kwargs)
    pos1 = copy.deepcopy(pos)
    pos1[0] += 45
    p3["pos"] = pos1
    get_latch_top(thing, **p3)


def get_latch_bottom(thing, **kwargs):
    depth = kwargs.get("thickness", 4)
    width = kwargs.get("width", 10)
    height = kwargs.get("height", 10)
    pos = kwargs.get("pos", [0, 0, 0])
    pos_plate = copy.deepcopy(pos)
    pos_plate[1] += 0
    pos_plate[2] += -depth /2
    prepare_print = kwargs.get("prepare_print", False)
    radius_screw = kwargs.get("radius_screw", "m6")

    # variable
    global clearance_design
    screw_rotation = kwargs.get("screw_rotation", False)
    clearance_hinge_bottom = kwargs.get("clearance_hinge_bottom", True)
    
    
    #add connecting cube rounded
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "p"
    p3["shape"] = f"rounded_rectangle"
    w = width_latch
    h = height*15 
    d = depth - depth_lid_overhang   
    size = [w, h, d]
    p3["size"] = size
    pos1 = copy.deepcopy(pos_plate)
    shift_latch = 5
    pos1[0] += shift_latch
    pos1[2] += (15 - depth)  /2    
    p3["pos"] = pos1
    #p3["m"] = "#"
    oobb_base.append_full(thing,**p3)

    #add connecting cube square bit
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "p"
    p3["shape"] = f"oobb_cube"
    w = width_latch
    h = 5 
    d = depth - depth_lid_overhang    
    size = [w, h, d]
    p3["size"] = size
    pos1 = copy.deepcopy(pos_plate)
    pos1[0] += shift_latch
    pos1[1] += 7.5  - h / 2
    pos1[2] += (15 - depth)  /2    
    p3["pos"] = pos1
    #p3["m"] = "#"
    oobb_base.append_full(thing,**p3)

    #add connecting cube bottom
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "p"
    p3["shape"] = f"oobb_cube"
    w = width_hinge
    h = height * 15 - (15 - diameter_hinge_bottom)
    d = depth - 15/2
    size = [w, h, d]
    p3["size"] = size
    pos1 = copy.deepcopy(pos_plate)
    pos1[1] += h/2
    pos1[2] += (15 - depth)  /2
    p3["pos"] = pos1
    #p3["m"] = "#"
    #oobb_base.append_full(thing,**p3)

    
    extra_rear = 3
    #add cutout central
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "n"
    p3["shape"] = f"oobb_cube"
    global width_hinge_inside
    w = width_hinge_inside + clearance_design
    global clearance_wall
    h = 15 - clearance_wall + extra_rear
    d = depth
    p3["zz"] = "middle"
    size = [w, h, d]
    p3["size"] = size 
    pos1 = copy.deepcopy(pos)
    pos1[1] += -extra_rear/2
    pos1[2] += (15 - depth)  /2
    p3["pos"] = pos1
    #p3["m"] = "#"
    oobb_base.append_full(thing,**p3)


    
    
    

    #add screw
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "n"
    p3["shape"] = f"oobb_screw_socket_cap"
    p3["radius_name"] = radius_screw
    pos2 = copy.deepcopy(pos)
    pos2[0] += width_latch / 2 + shift_latch
    p3["pos"] = pos2    
    p3["nut"] = False
    p3["depth"] = width_latch
    if radius_screw == "m6":
        p3["depth"] += 2
    p3["rot"] = [0, 90, 0]
    p3["rotation_nut"] = [0,0,360/12]
    #p3["m"] = "#"
    oobb_base.append_full(thing,**p3)

    #add nut
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "n"
    p3["shape"] = f"oobb_nut"
    p3["radius_name"] = radius_screw
    pos2 = copy.deepcopy(pos)
    pos2[0] += width_latch / 2 + shift_latch - 9
    p3["pos"] = pos2    
    p3["rot"] = [0, 90, 0]    
    p3["m"] = "#"
    #oobb_base.append_full(thing,**p3)

    #add cutout nut
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "n"
    p3["shape"] = f"oobb_cube"    
    w = 6    
    h = 12 + extra_rear
    d = 10
    p3["zz"] = "middle"
    size = [w, h, d]
    p3["size"] = size 
    pos1 = copy.deepcopy(pos2)
    pos1[0] += w/2
    pos1[1] += -1 - extra_rear/2
    pos1[2] += 0
    p3["pos"] = pos1
    #p3["m"] = "#"
    oobb_base.append_full(thing,**p3)
    

def get_latch_bottom_old_1(thing, **kwargs):
    
    
    depth = kwargs.get("thickness", 4)
    width = kwargs.get("width", 10)
    height = kwargs.get("height", 10)
    pos = kwargs.get("pos", [0, 0, 0])
    pos_plate = copy.deepcopy(pos)
    pos_plate[1] += -height * 15 / 4
    pos_plate[2] += -depth /2
    prepare_print = kwargs.get("prepare_print", False)
    

    #add main cylinder
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "p"
    p3["shape"] = f"oobb_cylinder"  
    p3["radius"] = 6 / 2
    p3["depth"] = depth
    p3["zz"] = "bottom"
    #p3["m"] = "#"
    pos1 = copy.deepcopy(pos)         
    p3["pos"] = pos1
    oobb_base.append_full(thing,**p3)

    #add bottom cylinder
    
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "p"
    p3["shape"] = f"oobb_cylinder"  
    p3["radius"] = 8 / 2
    p3["depth"] = 5
    p3["zz"] = "bottom"
    #p3["m"] = "#"
    pos1 = copy.deepcopy(pos)         

    p3["pos"] = pos1
    oobb_base.append_full(thing,**p3)

    
    # add hole
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "n"
    p3["shape"] = f"oobb_hole"
    p3["radius_name"] = "m3"
    pos1 =  copy.deepcopy(pos)    
    p3["pos"] = pos1
    #p3["m"] = "#"
    oobb_base.append_full(thing,**p3)

    # add nut
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "n"
    p3["shape"] = f"oobb_nut"
    p3["radius_name"] = "m3"
    pos1 =  copy.deepcopy(pos)    
    p3["pos"] = pos1
    p3["overhang"] = True
    p3["m"] = "#"
    oobb_base.append_full(thing,**p3)

def get_latch_top(thing, **kwargs):
    p3 = copy.deepcopy(kwargs)
    p3["radius_screw"] = "m6"
    get_hinge_top(thing, **p3)

def get_latch_top_old_1(thing, **kwargs):
    
    
    depth = kwargs.get("thickness", 4)
    width = kwargs.get("width", 10)
    height = kwargs.get("height", 10)
    pos = kwargs.get("pos", [0, 0, 0])
    pos_plate = copy.deepcopy(pos)
    pos_plate[1] += -height * 15 / 4
    pos_plate[2] += -depth /2
    prepare_print = kwargs.get("prepare_print", False)
    

    # variable
    clearance_design = kwargs.get("clearance_design", 0.5)
    
    style_cylinder = False
    #add main cylinder
    if style_cylinder:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "p"
        p3["shape"] = f"oobb_cylinder"  
        p3["radius"] = 10 / 2
        p3["depth"] = depth
        p3["zz"] = "bottom"
        #p3["m"] = "#"
        pos1 = copy.deepcopy(pos)         
        p3["pos"] = pos1
        oobb_base.append_full(thing,**p3)
    else:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "p"
        p3["shape"] = f"rounded_rectangle"  
        w = 15
        h = 3
        d = depth
        size = [w, h, d]
        p3["size"] = size
        p3["zz"] = "bottom"
        p3["radius"] = 2
        #p3["m"] = "#"
        pos1 = copy.deepcopy(pos) 
        pos1[1] += -extra_lid_overhang/2  - h/2 -.5     
        p3["pos"] = pos1
        oobb_base.append_full(thing,**p3)

        #add lip
        p4 = copy.deepcopy(p3)
        p4["type"] = "p"
        p4["shape"] = f"oobb_rounded_rectangle_hollow"
        d = depth + depth_lid_overhang
        size = [w, h, d]
        p4["size"] = size
        p4["wall_thickness"] = thickness_lid_wall_exterior
        p4["zz"] = "bottom"
        pos1 = copy.deepcopy(p4["pos"])
        pos1[2] += -depth_lid_overhang
        p4["pos"] = pos1
        #p4["m"] = "#"
        oobb_base.append_full(thing,**p4)


    ### currently skipped because no easy way to clip can be donbe with a rotation object
    # global depth_lid_overhang
    # #add lip tube
    # p3["type"] = "positive"
    # p3["shape"] = f"oobb_cylinder_hollow"  
    # p3["r"] = 10 / 2
    # p3["depth"] = depth + depth_lid_overhang
    # p3["zz"] = "bottom"
    # p3["wall_thickness"] = depth_lid_overhang
    # #p3["m"] = "#"
    # pos1 = copy.deepcopy(pos)         
    # pos1[2] += -depth - depth_lid_overhang/2
    # p3["pos"] = pos1

    oobb_base.append_full(thing,**p3)
    
    # add hole
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "n"
    p3["shape"] = f"oobb_hole"
    p3["radius_name"] = "m3"
    pos1 =  copy.deepcopy(pos)    
    p3["pos"] = pos1
    #p3["m"] = "#"
    oobb_base.append_full(thing,**p3)
    
    # add top clearance
    
    if style_cylinder:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "n"
        p3["shape"] = f"oobb_cylinder"  
        p3["radius"] = 7 / 2
        p3["depth"] = 10
        p3["zz"] = "top"
        #p3["m"] = "#"
        pos1 = copy.deepcopy(pos)         
        p3["pos"] = pos1
        oobb_base.append_full(thing,**p3)
    else:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "n"
        p3["shape"] = f"oobb_cube"  
        w = 12
        h = 3
        d = 10
        size = [w, h, d]
        p3["size"] = size
        p3["zz"] = "top"
        #p3["m"] = "#"
        pos1 = copy.deepcopy(pos) 
        pos1[1] += -h/2        
        p3["pos"] = pos1
        oobb_base.append_full(thing,**p3)



def get_hinge(thing, **kwargs):  

    #adding variables
    global clearance_design 
    global clearance_wall
    global width_hinge
    kwargs["width_hinge"] = width_hinge


    pos = kwargs.get("pos", [0, 0, 0])
    p3 = copy.deepcopy(kwargs)
    pos1 = copy.deepcopy(pos)
    #pos1[0] += 30
    p3["pos"] = pos1
    get_hinge_bottom(thing, **p3)
    
    
    p3 = copy.deepcopy(kwargs)
    pos1 = copy.deepcopy(pos)
    pos1[0] += 30
    p3["pos"] = pos1
    get_hinge_top(thing, **p3)

def get_hinge_bottom(thing, **kwargs):
    
    depth = kwargs.get("thickness", 4)
    width = kwargs.get("width", 10)
    height = kwargs.get("height", 10)
    pos = kwargs.get("pos", [0, 0, 0])
    pos_plate = copy.deepcopy(pos)
    pos_plate[1] += -height * 15 / 4
    pos_plate[2] += -depth /2
    prepare_print = kwargs.get("prepare_print", False)
    radius_screw = kwargs.get("radius_screw", "m3")

    # variable
    global clearance_design
    screw_rotation = kwargs.get("screw_rotation", False)
    clearance_hinge_bottom = kwargs.get("clearance_hinge_bottom", True)
    
    
    #add main cylinder
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "p"
    p3["shape"] = f"oobb_cylinder"
    global diameter_hinge_bottom
    p3["radius"] = diameter_hinge_bottom / 2
    global width_hinge
    d = width_hinge
    p3["depth"] = d
    p3["rot"] = [0, 90, 0]
    p3["zz"] = "bottom"
    #p3["m"] = "#"
    pos1 = copy.deepcopy(pos)         
    pos1[0] += -d/2
    p3["pos"] = pos1
    oobb_base.append_full(thing,**p3)

    #add connecting cube top
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "p"
    p3["shape"] = f"oobb_cube"
    w = width_hinge
    h = height*15 - 7.5    
    d = depth
    if clearance_hinge_bottom:
        d += -depth_lid_overhang - clearance_design
    size = [w, h, d]
    p3["size"] = size
    pos1 = copy.deepcopy(pos_plate)
    pos1[1] += -7.5 /2   
    pos1[2] += (15 - depth)  /2    
    p3["pos"] = pos1
    #p3["m"] = "#"
    oobb_base.append_full(thing,**p3)

    #add connecting cube bottom
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "p"
    p3["shape"] = f"oobb_cube"
    w = width_hinge
    h = height * 15 - (15 - diameter_hinge_bottom)
    d = depth - 15/2
    size = [w, h, d]
    p3["size"] = size
    pos1 = copy.deepcopy(pos_plate)
    pos1[1] += 0
    pos1[2] += (15 - depth)  /2
    p3["pos"] = pos1
    #p3["m"] = "#"
    oobb_base.append_full(thing,**p3)

    
    extra_rear = 3
    #add cutout central
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "n"
    p3["shape"] = f"oobb_cube"
    global width_hinge_inside
    w = width_hinge_inside + clearance_design
    global clearance_wall
    h = 15 - clearance_wall + extra_rear
    d = depth
    p3["zz"] = "middle"
    size = [w, h, d]
    p3["size"] = size 
    pos1 = copy.deepcopy(pos)
    pos1[1] += extra_rear/2
    pos1[2] += (15 - depth)  /2
    p3["pos"] = pos1
    #p3["m"] = "#"
    oobb_base.append_full(thing,**p3)

    

    #add screw
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "n"
    p3["shape"] = f"oobb_screw_countersunk"
    p3["radius_name"] = radius_screw
    pos2 = copy.deepcopy(pos)
    pos2[0] += width_hinge / 2
    if screw_rotation:
        pos2[0] += -width_hinge
    p3["pos"] = pos2    
    p3["nut"] = True
    p3["depth"] = width_hinge
    if radius_screw == "m6":
        p3["depth"] += 3
    p3["rot"] = [0, 90, 0]
    if screw_rotation:
        p3["rot"] = [0, 270, 0]
    #p3["m"] = "#"
    p3["overhang"] = False
    oobb_base.append_full(thing,**p3)

    #add lid clearance
    clearance_hinge_bottom_old_style_cutout = False
    if clearance_hinge_bottom_old_style_cutout:
        #angled piece
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "n"
        p3["shape"] = f"oobb_cube"
        w = width_hinge
        h = 12 #extra_lid_overhang + clearance_design
        d = 6 # depth_lid_overhang + clearance_design
        size = [w, h, d]
        p3["size"] = size
        pos1 = copy.deepcopy(pos)
        pos1[1] += -0#-15/2 + extra_lid_overhang/2
        pos1[2] += 4.5#15/2
        p3["zz"] = "bottom"
        p3["rot"] = [22.5, 0, 0]
        p3["pos"] = pos1
        p3["m"] = "#"
        oobb_base.append_full(thing,**p3)
        # flat piece
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "n"
        p3["shape"] = f"oobb_cube"
        w = width_hinge
        h = 3 #extra_lid_overhang + clearance_design
        d = 6 # depth_lid_overhang + clearance_design
        size = [w, h, d]
        p3["size"] = size
        pos1 = copy.deepcopy(pos)
        pos1[1] += -5.75#-15/2 + extra_lid_overhang/2
        pos1[2] += 7.5#15/2
        p3["zz"] = "middle"
        #p3["rot"] = [22.5, 0, 0]
        p3["pos"] = pos1
        p3["m"] = "#"
        oobb_base.append_full(thing,**p3)

def get_hinge_top(thing, **kwargs):
    
    
    depth = kwargs.get("thickness", 4)
    #depth not used always 15
    depth = 15
    width = kwargs.get("width", 10)
    height = kwargs.get("height", 10)
    pos = kwargs.get("pos", [0, 0, 0])
    pos_plate = copy.deepcopy(pos)
    pos_plate[1] += -height * 15 / 4
    pos_plate[2] += -depth /2
    prepare_print = kwargs.get("prepare_print", False)
    width_hinge = kwargs.get("width_hinge", 5)

    radius_screw = kwargs.get("radius_screw", "m3")

    # variable
    clearance_design = kwargs.get("clearance_design", 0.5)
    depth_lid = kwargs.get("depth_lid", 3)

    #add main cylinder
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "p"
    p3["shape"] = f"oobb_cylinder"  
    global diameter_hinge_inside   
    radius_hinge_top = diameter_hinge_inside / 2
    p3["radius"] = radius_hinge_top
    d = width_hinge_inside
    p3["depth"] = d
    p3["rot"] = [0, 90, 0]
    p3["zz"] = "bottom"
    #p3["m"] = "#"
    pos1 = copy.deepcopy(pos)         
    pos1[0] += -d/2
    p3["pos"] = pos1
    oobb_base.append_full(thing,**p3)

    #add cube to top
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "p"
    p3["shape"] = f"oobb_cube"
    w = width_hinge_inside
    r = diameter_hinge_inside
    h = r
    d = depth/2
    size = [w, h, d]
    p3["size"] = size    
    pos1 = copy.deepcopy(pos)
    p3["pos"] = pos1
    pos1[1] += 0
    #p3["m"] = "#"
    oobb_base.append_full(thing,**p3)
      
    #add attachment
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "p"
    p3["shape"] = f"oobb_cube"
    w = width_hinge_inside
    h = ((height-0.5)*15) + diameter_hinge_inside/2
    d = depth_lid
    size = [w, h, d]
    p3["size"] = size
    pos1 = copy.deepcopy(pos)
    pos1[1] += -((height-0.5)*15) / 2 + diameter_hinge_inside/4
    pos1[2] += depth/2
    p3["pos"] = pos1
    #p3["m"] = "#"
    oobb_base.append_full(thing,**p3)

    # add hole
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "n"
    p3["shape"] = f"oobb_hole"
    p3["radius_name"] = radius_screw
    d = width_hinge_inside
    p3["depth"] = d
    p3["rot"] = [0, 90, 0]    
    pos1 =  copy.deepcopy(pos)
    pos1[0] += -d/2
    p3["pos"] = pos1
    #p3["m"] = "#"
    oobb_base.append_full(thing,**p3)
    
def get_lid(thing, **kwargs):
    depth = kwargs.get("thickness", 4)
    height = kwargs.get("height", 10)
    width = kwargs.get("width", 10)

    #main body variables    
    height_tray = kwargs.get("height_tray")
    height_tray_tray = kwargs.get("height_tray_tray")
    height_tray_tray_mm = kwargs.get("height_tray_tray_mm")
    width_tray = kwargs.get("width_tray")
    width_tray_tray = kwargs.get("width_tray_tray")
    width_tray_tray_mm = kwargs.get("width_tray_tray_mm")    
    global clearance_wall, clearance_bottom    
    shift_hinge = kwargs.get("shift_hinge")
    


    # main body
    p3 = copy.deepcopy(kwargs)    
    pos = p3.get("pos", [0, 0, 0])
    pos1 = copy.deepcopy(pos)
    pos1[1] += -height_tray_tray_mm / 2
    p3["pos"] = pos1
    get_lid_basic(thing, **p3)
    

    #hinge variables
    #adding variables
    depth_lid = 1
    kwargs["depth_lid"] = depth_lid

    #hinge
    shift_hinge = kwargs.get("shift_hinge", None)

    p3 = copy.deepcopy(kwargs)    
    p3["thickness"] = 15
    p3["width"] = 1
    p3["height"] = 2
    poss = []
    pos1 = copy.deepcopy(pos)
    pos1[1] += 7.5
    pos1[2] += -15/2
    pos11 = copy.deepcopy(pos1)
    pos11[0] += shift_hinge
    pos12 = copy.deepcopy(pos1)
    pos12[0] += -shift_hinge
    poss.append(pos11)
    poss.append(pos12)
    for pos1 in poss:
        p4 = copy.deepcopy(p3)
        p4["pos"] = pos1
        get_hinge_top(thing, **p4)


    #latch
    p3 = copy.deepcopy(kwargs)    
    p3["thickness"] =  depth_lid
    p3["width"] = 1
    p3["height"] = 1
    pos1 = copy.deepcopy(pos)
    pos1[1] += -height_tray_tray_mm
    poss = []
    # #if width % 2 != 0:
    # #    pos1 = copy.deepcopy(pos)        
    # #    pos1[1] += -height_tray_tray_mm - 7.5
    #     pos1[2] += -15/2
    #     pos11 = copy.deepcopy(pos1)
    #     pos11[0] += width_tray * 15 / 2
    #     pos12 = copy.deepcopy(pos1)
    #     pos12[0] += -width_tray * 15 / 2
    #     poss.append(pos11)
    #     poss.append(pos12)
    # else:
    if True:
        pos1 = copy.deepcopy(pos)
        pos1[1] += -height_tray_tray_mm - 7.5
        pos1[2] += -15/2
        poss.append(pos1)
    for pos1 in poss:
        p4 = copy.deepcopy(p3)
        p4["pos"] = pos1
        get_latch_top(thing, **p4)

    

def get_lid_basic(thing, **kwargs):
    depth = kwargs.get("thickness", 4)
    width = kwargs.get("width", 10)
    height = kwargs.get("height", 10)
    prepare_print = kwargs.get("prepare_print", False)
    pos = kwargs.get("pos", [0, 0, 0])

    width_tray = kwargs.get("width_tray", 8)
    height_tray = kwargs.get("height_tray", 8)
    width_tray_tray = width * width_tray
    kwargs["width_tray_tray"] = width_tray_tray
    width_tray_tray_mm = width_tray_tray * 15
    kwargs["width_tray_tray_mm"] = width_tray_tray_mm
    height_tray_tray = height * height_tray
    kwargs["height_tray_tray"] = height_tray_tray
    height_tray_tray_mm = height_tray_tray * 15
    kwargs["height_tray_tray_mm"] = height_tray_tray_mm



    # add pockets
    pocket_array = []   
    
    for x in range(0,width):
        for y in range(0,height):
            pos1 = copy.deepcopy(pos)
            pos1[0] += (x * 15 * width_tray) - width_tray_tray_mm / 2 + 15 * width_tray / 2
            pos1[1] += (y * 15 * height_tray) - height_tray_tray_mm / 2 + 15 * height_tray / 2
            pocket = {}
            pocket["position"] = pos1
            pocket["width"] = width_tray
            pocket["height"] = height_tray
            pocket["depth"] = depth * 2
            pocket_array.append(pocket)

    kwargs["pocket_array"] = pocket_array
    get_lid_array(thing, **kwargs)


def get_lid_array(thing, **kwargs):
    #return get_lid_array_hole_in_lip_for_lip_clearance(thing, **kwargs)
    return get_lid_array_hole_in_hinge_bottom_for_lip_clearance(thing, **kwargs)


def get_lid_array_hole_in_hinge_bottom_for_lip_clearance(thing, **kwargs):
    #default_shape_pocket = "oobb_cube"
    default_shape_pocket = "rounded_rectangle"
    global clearance_wall, clearance_bottom



    depth = kwargs.get("thickness", 4)
    width = kwargs.get("width", 10)
    height = kwargs.get("height", 10)
    prepare_print = kwargs.get("prepare_print", False)
    
    #size stuff
    width_full = kwargs.get("width_full", 10)
    height_full = kwargs.get("height_full", 10)
    width_tray_tray = kwargs.get("width_tray_tray", 0)
    width_tray_tray_mm = kwargs.get("width_tray_tray_mm", 0)
    height_tray_tray = kwargs.get("height_tray_tray", 0)
    height_tray_tray_mm = kwargs.get("height_tray_tray_mm", 0)


    #pocket array stuff
    pocket_array = kwargs.get("pocket_array", [])
    
    depth_hinge_support = 9

    pos = kwargs.get("pos", [0, 0, 0])
    #pos = copy.deepcopy(pos)
    #pos[2] += -20
    global extra_lid_overhang
    extra_size = (extra_lid_overhang * 2)/15

    #add plate main
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "p"
    p3["shape"] = f"oobb_plate"    
    p3["depth"] = depth
    p3["width"] = width_full + extra_size
    p3["height"] = height_full + extra_size
    p3["radius"] = 5 + extra_size
    p3["extra_mm"] = True
    #p3["m"] = "#"
    pos1 = copy.deepcopy(pos)       
    p3["pos"] = pos1
    oobb_base.append_full(thing,**p3)
    
    #add outer lip
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "p"
    p3["shape"] = f"oobb_rounded_rectangle_hollow"    

    d = depth + depth_lid_overhang
    w = (width_full + extra_size)* 15
    h = (height_full + extra_size) * 15
    p3["size"] = [w, h, d]
    global thickness_lid_wall_exterior
    p3["wall_thickness"] = thickness_lid_wall_exterior
    p3["extra_mm"] = True
    #p3["m"] = "#"
    pos1 = copy.deepcopy(pos)  
    pos1[2] += -depth_lid_overhang       
    p3["pos"] = pos1
    p3["radius"] = 5 + extra_size
    oobb_base.append_full(thing,**p3)

    global width_hinge, width_hinge_inside, clearance_design

    #add outer lip clearance for hing bottom
    if False:
        #outside clearance
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "n"
        p3["shape"] = f"oobb_cube"

        w = (width_hinge - width_hinge_inside)/2 + clearance_design
        h = extra_lid_overhang
        d = 10 # extra clearance for hinge maybe
        #d = depth_lid_overhang # just the lip
        size = [w, h, d]
        p3["size"] = size
        if True:        
            #clearance for the hinge bottom piece
            shift_hinge = kwargs.get("shift_hinge", None)
            shift_shift = width_hinge/2
            shift_outside = shift_hinge + shift_shift - w/2 + clearance_design
            shift_inside = shift_hinge - shift_shift + w/2 - clearance_design
            poss = []
            pos1 = copy.deepcopy(pos)
            pos1[2] += -depth_lid_overhang
            pos1[1] += 0 - pos1[1] + extra_lid_overhang/2 
            pos11 = copy.deepcopy(pos1)
            
            
            pos11[0] += shift_outside 
            pos12 = copy.deepcopy(pos1)
            pos12[0] += shift_inside

            pos13 = copy.deepcopy(pos1)
            pos13[0] += -shift_outside
            pos14 = copy.deepcopy(pos1)
            pos14[0] += -shift_inside
            poss.append(pos11)
            poss.append(pos12)
            poss.append(pos13)
            poss.append(pos14)
        p3["pos"] = poss
        #p3["m"] = "#"
        oobb_base.append_full(thing,**p3)

    #clearanmce for the corners
    if False:
        #outside clearance two cubes
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "n"
        p3["shape"] = f"oobb_cube"

        w = 10
        h = 5
        d = depth_lid_overhang
        #d = depth_lid_overhang # just the lip
        size = [w, h, d]
        p3["size"] = size
        if True:        
            #clearance for the hinge bottom piece
            shift_hinge = kwargs.get("shift_hinge", None)
            shift_shift = width_hinge_inside/2 + w /2
            shift_outside = shift_hinge + shift_shift
            poss = []
            pos1 = copy.deepcopy(pos)
            pos1[2] += -depth_lid_overhang
            pos1[1] += 0 - pos1[1] + extra_lid_overhang/2 
            pos11 = copy.deepcopy(pos1)
            pos11[0] += shift_outside 
            pos13 = copy.deepcopy(pos1)
            pos13[0] += -shift_outside
            poss.append(pos11)
            poss.append(pos13)
        p3["pos"] = poss
        #p3["m"] = "#"
        oobb_base.append_full(thing,**p3)
        
        # second outside clearance cube
        #outside clearance two cubes
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "n"
        p3["shape"] = f"oobb_cube"

        w = 5
        h = 4
        d = depth_lid_overhang
        #d = depth_lid_overhang # just the lip
        size = [w, h, d]
        p3["size"] = size
        if True:        
            #clearance for the hinge bottom piece
            shift_hinge = kwargs.get("shift_hinge", None)
            shift_shift = width_hinge_inside/2 + w * 3/2
            shift_outside = shift_hinge + shift_shift
            poss = []
            pos1 = copy.deepcopy(pos)
            pos1[2] += -depth_lid_overhang
            pos1[1] += 0 - pos1[1] + extra_lid_overhang/2 + - h/2
            pos11 = copy.deepcopy(pos1)
            pos11[0] += shift_outside 
            pos13 = copy.deepcopy(pos1)
            pos13[0] += -shift_outside
            poss.append(pos11)
            poss.append(pos13)
        p3["pos"] = poss
        #p3["m"] = "#"
        oobb_base.append_full(thing,**p3)

    
    
    clearance_inset = 1.4
    thickness_wall_inset = 0.5
    for pocket in pocket_array:
        depth_pocket = 1.5
        shape_pocket = pocket.get("shape", default_shape_pocket)
        global clearance_wall, clearance_bottom        
        width_tray = pocket.get("width", 8)
        height_tray = pocket.get("height", 8)
        #main outline
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "p"
        r = 5 - (clearance_wall + clearance_inset * 2)/2
        p3["radius"] = r
        p3["shape"] = shape_pocket
        p3["depth"] = depth_pocket
        w = (width_tray * 15) - clearance_wall - clearance_inset * 2
        h = (height_tray * 15) - clearance_wall - clearance_inset * 2
        d = depth_pocket
        p3["size"] = [w, h, d]
        pos1 = copy.deepcopy(pocket["position"])
        pos1[2] += -depth_pocket
        p3["pos"] = pos1
        if "sphere" in shape_pocket:
            pass
            #p3["radius"] = depth
        #p3["m"] = "#"
        oobb_base.append_full(thing,**p3)
        #cutout
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "n"
        p3["shape"] = shape_pocket
        r = 5 - (clearance_wall + clearance_inset * 2 + thickness_wall_inset * 2)/2
        p3["radius"] = r
        p3["depth"] = depth_pocket
        w = (width_tray * 15) - clearance_wall - clearance_inset * 2 - thickness_wall_inset * 2
        h = (height_tray * 15) - clearance_wall - clearance_inset * 2 - thickness_wall_inset * 2
        d = depth_pocket
        p3["size"] = [w, h, d]
        pos1 = copy.deepcopy(pocket["position"])
        pos1[2] += -depth_pocket
        p3["pos"] = pos1
        if "sphere" in shape_pocket:
            pass
            #p3["radius"] = depth
        #p3["m"] = "#"
        oobb_base.append_full(thing,**p3)










    if prepare_print:
        #put into a rotation object
        components_second = copy.deepcopy(thing["components"])
        return_value_2 = {}
        return_value_2["type"]  = "rotation"
        return_value_2["typetype"]  = "p"
        pos1 = copy.deepcopy(pos)
        pos1[0] += 50
        return_value_2["pos"] = pos1
        return_value_2["rot"] = [180,0,0]
        return_value_2["objects"] = components_second
        
        thing["components"].append(return_value_2)

    
        #add slice # top
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "n"
        p3["shape"] = f"oobb_slice"
        #p3["m"] = "#"
        oobb_base.append_full(thing,**p3)
    
def get_lid_array_hole_in_lip_for_lip_clearance(thing, **kwargs):
    #default_shape_pocket = "oobb_cube"
    default_shape_pocket = "rounded_rectangle"
    global clearance_wall, clearance_bottom



    depth = kwargs.get("thickness", 4)
    width = kwargs.get("width", 10)
    height = kwargs.get("height", 10)
    prepare_print = kwargs.get("prepare_print", False)
    
    #size stuff
    width_full = kwargs.get("width_full", 10)
    height_full = kwargs.get("height_full", 10)
    width_tray_tray = kwargs.get("width_tray_tray", 0)
    width_tray_tray_mm = kwargs.get("width_tray_tray_mm", 0)
    height_tray_tray = kwargs.get("height_tray_tray", 0)
    height_tray_tray_mm = kwargs.get("height_tray_tray_mm", 0)


    #pocket array stuff
    pocket_array = kwargs.get("pocket_array", [])
    
    depth_hinge_support = 9

    pos = kwargs.get("pos", [0, 0, 0])
    #pos = copy.deepcopy(pos)
    #pos[2] += -20
    global extra_lid_overhang
    extra_size = (extra_lid_overhang * 2)/15

    #add plate main
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "p"
    p3["shape"] = f"oobb_plate"    
    p3["depth"] = depth
    p3["width"] = width_full + extra_size
    p3["height"] = height_full + extra_size
    p3["extra_mm"] = True
    #p3["m"] = "#"
    pos1 = copy.deepcopy(pos)       
    p3["pos"] = pos1
    oobb_base.append_full(thing,**p3)
    
    #add outer lip
    p3["type"] = "p"
    p3["shape"] = f"oobb_rounded_rectangle_hollow"    

    d = depth + depth_lid_overhang
    w = (width_full + extra_size)* 15
    h = (height_full + extra_size) * 15
    p3["size"] = [w, h, d]
    global thickness_lid_wall_exterior
    p3["wall_thickness"] = thickness_lid_wall_exterior
    p3["extra_mm"] = True
    #p3["m"] = "#"
    pos1 = copy.deepcopy(pos)  
    pos1[2] += -depth_lid_overhang       
    p3["pos"] = pos1
    oobb_base.append_full(thing,**p3)

    global width_hinge, width_hinge_inside, clearance_design

    #add outer lip cleaance for hing bottom
    if True:
        #outside clearance
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "n"
        p3["shape"] = f"oobb_cube"

        w = (width_hinge - width_hinge_inside)/2 + clearance_design
        h = extra_lid_overhang
        d = 10 # extra clearance for hinge maybe
        #d = depth_lid_overhang # just the lip
        size = [w, h, d]
        p3["size"] = size
        if True:        
            #clearance for the hinge bottom piece
            shift_hinge = kwargs.get("shift_hinge", None)
            shift_shift = width_hinge/2
            shift_outside = shift_hinge + shift_shift - w/2 + clearance_design
            shift_inside = shift_hinge - shift_shift + w/2 - clearance_design
            poss = []
            pos1 = copy.deepcopy(pos)
            pos1[2] += -depth_lid_overhang
            pos1[1] += 0 - pos1[1] + extra_lid_overhang/2 
            pos11 = copy.deepcopy(pos1)
            
            
            pos11[0] += shift_outside 
            pos12 = copy.deepcopy(pos1)
            pos12[0] += shift_inside

            pos13 = copy.deepcopy(pos1)
            pos13[0] += -shift_outside
            pos14 = copy.deepcopy(pos1)
            pos14[0] += -shift_inside
            poss.append(pos11)
            poss.append(pos12)
            poss.append(pos13)
            poss.append(pos14)
        p3["pos"] = poss
        #p3["m"] = "#"
        oobb_base.append_full(thing,**p3)

    #clearanmce for the corners
    if True:
        #outside clearance two cubes
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "n"
        p3["shape"] = f"oobb_cube"

        w = 10
        h = 5
        d = depth_lid_overhang
        #d = depth_lid_overhang # just the lip
        size = [w, h, d]
        p3["size"] = size
        if True:        
            #clearance for the hinge bottom piece
            shift_hinge = kwargs.get("shift_hinge", None)
            shift_shift = width_hinge_inside/2 + w /2
            shift_outside = shift_hinge + shift_shift
            poss = []
            pos1 = copy.deepcopy(pos)
            pos1[2] += -depth_lid_overhang
            pos1[1] += 0 - pos1[1] + extra_lid_overhang/2 
            pos11 = copy.deepcopy(pos1)
            pos11[0] += shift_outside 
            pos13 = copy.deepcopy(pos1)
            pos13[0] += -shift_outside
            poss.append(pos11)
            poss.append(pos13)
        p3["pos"] = poss
        #p3["m"] = "#"
        oobb_base.append_full(thing,**p3)
        
        # second outside clearance cube
        #outside clearance two cubes
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "n"
        p3["shape"] = f"oobb_cube"

        w = 5
        h = 4
        d = depth_lid_overhang
        #d = depth_lid_overhang # just the lip
        size = [w, h, d]
        p3["size"] = size
        if True:        
            #clearance for the hinge bottom piece
            shift_hinge = kwargs.get("shift_hinge", None)
            shift_shift = width_hinge_inside/2 + w * 3/2
            shift_outside = shift_hinge + shift_shift
            poss = []
            pos1 = copy.deepcopy(pos)
            pos1[2] += -depth_lid_overhang
            pos1[1] += 0 - pos1[1] + extra_lid_overhang/2 + - h/2
            pos11 = copy.deepcopy(pos1)
            pos11[0] += shift_outside 
            pos13 = copy.deepcopy(pos1)
            pos13[0] += -shift_outside
            poss.append(pos11)
            poss.append(pos13)
        p3["pos"] = poss
        #p3["m"] = "#"
        oobb_base.append_full(thing,**p3)

    
    
    clearance_inset = 1.4
    thickness_wall_inset = 0.5
    for pocket in pocket_array:
        depth_pocket = 1.5
        shape_pocket = pocket.get("shape", default_shape_pocket)
        global clearance_wall, clearance_bottom        
        width_tray = pocket.get("width", 8)
        height_tray = pocket.get("height", 8)
        #main outline
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "p"
        r = 5 - (clearance_wall + clearance_inset * 2)/2
        p3["radius"] = r
        p3["shape"] = shape_pocket
        p3["depth"] = depth_pocket
        w = (width_tray * 15) - clearance_wall - clearance_inset * 2
        h = (height_tray * 15) - clearance_wall - clearance_inset * 2
        d = depth_pocket
        p3["size"] = [w, h, d]
        pos1 = copy.deepcopy(pocket["position"])
        pos1[2] += -depth_pocket
        p3["pos"] = pos1
        if "sphere" in shape_pocket:
            pass
            #p3["radius"] = depth
        #p3["m"] = "#"
        oobb_base.append_full(thing,**p3)
        #cutout
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "n"
        p3["shape"] = shape_pocket
        r = 5 - (clearance_wall + clearance_inset * 2 + thickness_wall_inset * 2)/2
        p3["radius"] = r
        p3["depth"] = depth_pocket
        w = (width_tray * 15) - clearance_wall - clearance_inset * 2 - thickness_wall_inset * 2
        h = (height_tray * 15) - clearance_wall - clearance_inset * 2 - thickness_wall_inset * 2
        d = depth_pocket
        p3["size"] = [w, h, d]
        pos1 = copy.deepcopy(pocket["position"])
        pos1[2] += -depth_pocket
        p3["pos"] = pos1
        if "sphere" in shape_pocket:
            pass
            #p3["radius"] = depth
        #p3["m"] = "#"
        oobb_base.append_full(thing,**p3)










    if prepare_print:
        #put into a rotation object
        components_second = copy.deepcopy(thing["components"])
        return_value_2 = {}
        return_value_2["type"]  = "rotation"
        return_value_2["typetype"]  = "p"
        pos1 = copy.deepcopy(pos)
        pos1[0] += 50
        return_value_2["pos"] = pos1
        return_value_2["rot"] = [180,0,0]
        return_value_2["objects"] = components_second
        
        thing["components"].append(return_value_2)

    
        #add slice # top
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "n"
        p3["shape"] = f"oobb_slice"
        #p3["m"] = "#"
        oobb_base.append_full(thing,**p3)
    


def get_main_body(thing, **kwargs):
    depth = kwargs.get("thickness", 4)
    height = kwargs.get("height", 10)
    width = kwargs.get("width", 10)

    kwargs["clearance_hinge_bottom"] = True

    #main body variables    
    height_tray = kwargs.get("height_tray")
    height_tray_tray = kwargs.get("height_tray_tray")
    height_tray_tray_mm = kwargs.get("height_tray_tray_mm")
    width_tray = kwargs.get("width_tray")
    width_tray_tray = kwargs.get("width_tray_tray")
    width_tray_tray_mm = kwargs.get("width_tray_tray_mm")    
    global clearance_wall, clearance_bottom
    
    shift_hinge = kwargs.get("shift_hinge")
    

    # main body
    p3 = copy.deepcopy(kwargs)    
    pos = p3.get("pos", [0, 0, 0])
    pos1 = copy.deepcopy(pos)
    pos1[1] += -height_tray_tray_mm / 2
    p3["pos"] = pos1
    get_main_body_basic(thing, **p3)
    

    #hinge variables
    #adding variables

    #hinge
    
    shift_hinge = kwargs.get("shift_hinge", None)

    p3 = copy.deepcopy(kwargs)    
    p3["thickness"] = depth
    p3["width"] = 1
    p3["height"] = 2
    poss = []
    pos1 = copy.deepcopy(pos)
    pos1[1] += 7.5
    pos1[2] += depth - 15/2
    pos11 = copy.deepcopy(pos1)
    pos11[0] += shift_hinge
    pos12 = copy.deepcopy(pos1)
    pos12[0] += -shift_hinge
    poss.append(pos11)
    poss.append(pos12)
    screw_rotation = False
    for pos1 in poss:
        p4 = copy.deepcopy(p3)
        p4["screw_rotation"] = screw_rotation
        p4["pos"] = pos1
        get_hinge_bottom(thing, **p4)
        screw_rotation = not screw_rotation

    #add latch
    p3 = copy.deepcopy(kwargs)
    p3["thickness"] =  depth
    p3["width"] = 1
    p3["height"] = 1
    poss = []
    # if width % 2 != 0:
    #     pos1 = copy.deepcopy(pos)
    #     pos1[1] += -height_tray_tray_mm
    #     pos11 = copy.deepcopy(pos1)
    #     pos11[0] += width_tray * 15 / 2
    #     pos12 = copy.deepcopy(pos1)
    #     pos12[0] += -width_tray * 15 / 2
    #     poss.append(pos11)
    #     poss.append(pos12)
    # else:
    if True:
        pos1 = copy.deepcopy(pos)
        pos1[1] += -height_tray_tray_mm - 7.5
        pos1[2] += 15/2 + depth - 15
        poss.append(pos1)
    for pos1 in poss:
        p4 = copy.deepcopy(p3)
        p4["pos"] = pos1
        get_latch_bottom(thing, **p4)

def get_main_body_basic(thing, **kwargs):
    depth = kwargs.get("thickness", 4)
    width = kwargs.get("width", 10)
    height = kwargs.get("height", 10)
    prepare_print = kwargs.get("prepare_print", False)
    pos = kwargs.get("pos", [0, 0, 0])

    width_tray = kwargs.get("width_tray", 8)
    height_tray = kwargs.get("height_tray", 8)
    width_tray_tray = width * width_tray
    kwargs["width_tray_tray"] = width_tray_tray
    width_tray_tray_mm = width_tray_tray * 15
    kwargs["width_tray_tray_mm"] = width_tray_tray_mm
    height_tray_tray = height * height_tray
    kwargs["height_tray_tray"] = height_tray_tray
    height_tray_tray_mm = height_tray_tray * 15
    kwargs["height_tray_tray_mm"] = height_tray_tray_mm



    # add pockets
    pocket_array = []   
    
    for x in range(0,width):
        for y in range(0,height):
            pos1 = copy.deepcopy(pos)
            pos1[0] += (x * 15 * width_tray) - width_tray_tray_mm / 2 + 15 * width_tray / 2
            pos1[1] += (y * 15 * height_tray) - height_tray_tray_mm / 2 + 15 * height_tray / 2
            pocket = {}
            pocket["position"] = pos1
            pocket["width"] = width_tray
            pocket["height"] = height_tray
            pocket["depth"] = depth * 2
            pocket_array.append(pocket)

    kwargs["pocket_array"] = pocket_array
    get_main_body_array(thing, **kwargs)

def get_main_body_array(thing, **kwargs):
    #default_shape_pocket = "oobb_cube"
    default_shape_pocket = "sphere_rectangle"
    global clearance_wall, clearance_bottom

    


    depth = kwargs.get("thickness", 4)
    width = kwargs.get("width", 10)
    height = kwargs.get("height", 10)
    prepare_print = kwargs.get("prepare_print", False)
    
    #size stuff
    width_full = kwargs.get("width_full", 10)
    height_full = kwargs.get("height_full", 10)
    width_tray_tray = kwargs.get("width_tray_tray", 0)
    width_tray_tray_mm = kwargs.get("width_tray_tray_mm", 0)
    height_tray_tray = kwargs.get("height_tray_tray", 0)
    height_tray_tray_mm = kwargs.get("height_tray_tray_mm", 0)


    #pocket array stuff
    pocket_array = kwargs.get("pocket_array", [])
    
    depth_hinge_support = 9

    pos = kwargs.get("pos", [0, 0, 0])
    #pos = copy.deepcopy(pos)
    #pos[2] += -20
    global clearance_wall
    extra_size = clearance_wall / 15

    #add plate main
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "p"
    p3["shape"] = f"oobb_plate"    
    p3["depth"] = depth
    p3["width"] = width_full + extra_size
    p3["height"] = height_full + extra_size
    p3["extra_mm"] = True
    #p3["m"] = "#"
    pos1 = copy.deepcopy(pos)         
    p3["pos"] = pos1
    oobb_base.append_full(thing,**p3)
    
    #add plate hinge_support 
    #no longer used
    # p3 = copy.deepcopy(kwargs)
    # p3["type"] = "p"
    # p3["shape"] = f"oobb_plate"    
    # p3["depth"] = depth_hinge_support
    # p3["width"] = 1 + extra_size
    # p3["height"] = height_tray_tray + 1 + extra_size
    # p3["extra_mm"] = True
    # poss = []
    # pos1 = copy.deepcopy(pos)    
    # pos1[1] += 15/2
    # pos11 = copy.deepcopy(pos1)
    # pos11[0] += width_tray_tray * 15 / 2 - 15/2
    # pos12 = copy.deepcopy(pos1)
    # pos12[0] += -(width_tray_tray * 15 / 2 - 15/2)
    # poss.append(pos11)
    # poss.append(pos12)
    # p3["pos"] = poss
    # oobb_base.append_full(thing,**p3)
    


    #add holes
    #no lnoger used
    # p3 = copy.deepcopy(kwargs)
    # p3["type"] = "n"
    # p3["shape"] = f"oobb_hole"
    # p3["radius_name"] = "m6"         
    # p3["width"] = width_tray_tray
    # p3["height"] = height_tray_tray    
    # poss = []
    # pos1 = copy.deepcopy(pos)
    # pos1[1] += height_tray_tray* 15/2 + 15/2
    # pos11 = copy.deepcopy(pos1)
    # pos11[0] += width_tray_tray * 15 / 2 - 15/2
    # pos12 = copy.deepcopy(pos1)
    # pos12[0] += -(width_tray_tray * 15 / 2 - 15/2)
    # poss.append(pos11)
    # poss.append(pos12)
    # p3["pos"] = poss
    # #p3["m"] = "#"
    # oobb_base.append_full(thing,**p3)
    
    #add m6 nuts
    #no longer used
    # p3 = copy.deepcopy(kwargs)
    # p3["type"] = "n"
    # p3["shape"] = f"oobb_nut"
    # p3["radius_name"] = "m6"
    # p3["pos"] = poss
    # p3["overhang"] = True
    # #p3["m"] = "#"
    # oobb_base.append_full(thing,**p3)
    

    
    
    global clearance_bottom

    for pocket in pocket_array:
        shape_pocket = pocket.get("shape", default_shape_pocket)
        
        width_tray = pocket.get("width", 8)
        height_tray = pocket.get("height", 8)
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "n"
        p3["shape"] = shape_pocket
        p3["depth"] = depth * 2
        w = (width_tray * 15) - clearance_wall
        h = (height_tray * 15) - clearance_wall
        d = depth * 2
        p3["size"] = [w, h, d]
        pos1 = copy.deepcopy(pocket["position"])
        pos1[2] += clearance_bottom
        p3["pos"] = pos1
        #p3["m"] = "#"
        oobb_base.append_full(thing,**p3)










    if prepare_print:
        #put into a rotation object
        components_second = copy.deepcopy(thing["components"])
        return_value_2 = {}
        return_value_2["type"]  = "rotation"
        return_value_2["typetype"]  = "p"
        pos1 = copy.deepcopy(pos)
        pos1[0] += 50
        return_value_2["pos"] = pos1
        return_value_2["rot"] = [180,0,0]
        return_value_2["objects"] = components_second
        
        thing["components"].append(return_value_2)

    
        #add slice # top
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "n"
        p3["shape"] = f"oobb_slice"
        #p3["m"] = "#"
        oobb_base.append_full(thing,**p3)
    
###### utilities



def make_scad_generic(part):
    
    # fetching variables
    name = part.get("name", "default")
    project_name = part.get("project_name", "default")
    
    kwargs = part.get("kwargs", {})    
    
    modes = kwargs.get("modes", ["3dpr", "laser", "true"])
    save_type = kwargs.get("save_type", "all")
    overwrite = kwargs.get("overwrite", True)

    kwargs["type"] = f"{project_name}_{name}"

    thing = oobb_base.get_default_thing(**kwargs)
    kwargs.pop("size","")

    #get the part from the function get_{name}"
    func = globals()[f"get_{name}"]
    func(thing, **kwargs)

    for mode in modes:
        depth = thing.get(
            "depth_mm", thing.get("thickness_mm", 3))
        height = thing.get("height_mm", 100)
        layers = depth / 3
        tilediff = height + 10
        start = 1.5
        if layers != 1:
            start = 1.5 - (layers / 2)*3
        if "bunting" in thing:
            start = 0.5
        opsc.opsc_make_object(f'scad_output/{thing["id"]}/{mode}.scad', thing["components"], mode=mode, save_type=save_type, overwrite=overwrite, layers=layers, tilediff=tilediff, start=start)    


if __name__ == '__main__':
    kwargs = {}
    main(**kwargs)