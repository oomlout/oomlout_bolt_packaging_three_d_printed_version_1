import copy
import opsc
import oobb
import oobb_base

def main(**kwargs):
    make_scad(**kwargs)

def make_scad(**kwargs):
    parts = []

    # save_type variables
    if True:
        #filter = ""
        filter = "main_body"

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
        
        part = copy.deepcopy(part_default)
        p3 = copy.deepcopy(kwargs)
        #p3["thickness"] = 6
        part["kwargs"] = p3
        p3["width"] = 2
        p3["height"] = 2
        p3["thickness"] = 15
        part["name"] = "main_body"
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

def get_main_body(thing, **kwargs):

    depth = kwargs.get("thickness", 4)
    width = kwargs.get("width", 10)
    height = kwargs.get("height", 10)
    prepare_print = kwargs.get("prepare_print", False)

    width_tray = 3
    height_tray = 3
    width_tray_tray = width * width_tray
    width_tray_tray_mm = width_tray_tray * 15
    height_tray_tray = height * height_tray
    height_tray_tray_mm = height_tray_tray * 15

    depth_hinge_support = 9

    pos = kwargs.get("pos", [0, 0, 0])
    #pos = copy.deepcopy(pos)
    #pos[2] += -20

    #add plate main
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "p"
    p3["shape"] = f"oobb_plate"    
    p3["depth"] = depth
    p3["width"] = width_tray_tray
    p3["height"] = height_tray_tray
    p3["extra_mm"] = True
    #p3["m"] = "#"
    pos1 = copy.deepcopy(pos)         
    p3["pos"] = pos1
    oobb_base.append_full(thing,**p3)
    
    #add plate hinge_support
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "p"
    p3["shape"] = f"oobb_plate"    
    p3["depth"] = depth_hinge_support
    p3["width"] = 1
    p3["height"] = height_tray_tray + 1
    p3["extra_mm"] = True
    poss = []
    pos1 = copy.deepcopy(pos)    
    pos1[1] += 15/2
    pos11 = copy.deepcopy(pos1)
    pos11[0] += width_tray_tray * 15 / 2 - 15/2
    pos12 = copy.deepcopy(pos1)
    pos12[0] += -(width_tray_tray * 15 / 2 - 15/2)
    poss.append(pos11)
    poss.append(pos12)
    p3["pos"] = poss
    oobb_base.append_full(thing,**p3)
    


    #add holes
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "n"
    p3["shape"] = f"oobb_hole"
    p3["radius_name"] = "m6"         
    p3["width"] = width_tray_tray
    p3["height"] = height_tray_tray    
    poss = []
    pos1 = copy.deepcopy(pos)
    pos1[1] += height_tray_tray* 15/2 + 15/2
    pos11 = copy.deepcopy(pos1)
    pos11[0] += width_tray_tray * 15 / 2 - 15/2
    pos12 = copy.deepcopy(pos1)
    pos12[0] += -(width_tray_tray * 15 / 2 - 15/2)
    poss.append(pos11)
    poss.append(pos12)
    p3["pos"] = poss
    #p3["m"] = "#"
    oobb_base.append_full(thing,**p3)
    
    #add m6 nuts
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "n"
    p3["shape"] = f"oobb_nut"
    p3["radius_name"] = "m6"
    p3["pos"] = poss
    p3["overhang"] = True
    #p3["m"] = "#"
    oobb_base.append_full(thing,**p3)
    

    # add pockets
    #shape_pocket = "oobb_cube"
    shape_pocket = "sphere_rectangle"
    clearance_wall = 1.5
    clearance_bottom = clearance_wall


    poss = []
    for x in range(0,width):
        for y in range(0,height):
            pos1 = copy.deepcopy(pos)
            pos1[0] += (x * 15 * width_tray) - width_tray_tray_mm / 4
            pos1[1] += (y * 15 * height_tray) - height_tray_tray_mm / 4
            pos1[2] += clearance_bottom
            poss.append(pos1)
            
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "n"
    p3["shape"] = shape_pocket
    p3["depth"] = depth * 2
    w = (width_tray * 15) - clearance_wall
    h = (height_tray * 15) - clearance_wall
    d = depth * 2
    p3["size"] = [w, h, d]
    p3["pos"] = poss
    p3["m"] = "#"
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