$fn = 50;


difference() {
	union() {
		cylinder(h = 15, r = 3.0000000000);
		cylinder(h = 5, r = 5.0000000000);
		translate(v = [30, 0, 0.0000000000]) {
			cylinder(h = 15, r = 5.0000000000);
		}
	}
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						#translate(v = [-1.8000000000, -3.0000000000, -0.3000000000]) {
							cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
						}
						#translate(v = [-1.8000000000, -1.8000000000, -0.6000000000]) {
							cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
						}
						#translate(v = [-1.8000000000, -3.0000000000, 2.5000000000]) {
							cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
						}
						#translate(v = [-1.8000000000, -1.8000000000, 2.8000000000]) {
							cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
						}
						#linear_extrude(height = 2.5000000000) {
							polygon(points = [[3.4620000000, 0.0000000000], [1.7310000000, 2.9981799479], [-1.7310000000, 2.9981799479], [-3.4620000000, 0.0000000000], [-1.7310000000, -2.9981799479], [1.7310000000, -2.9981799479]]);
						}
						#translate(v = [-1.8000000000, -3.0000000000, -0.3000000000]) {
							cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
						}
						#translate(v = [-1.8000000000, -1.8000000000, -0.6000000000]) {
							cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
						}
						#translate(v = [-1.8000000000, -3.0000000000, 2.5000000000]) {
							cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
						}
						#translate(v = [-1.8000000000, -1.8000000000, 2.8000000000]) {
							cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
						}
						#translate(v = [-1.8000000000, -3.0000000000, -0.3000000000]) {
							cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
						}
						#translate(v = [-1.8000000000, -1.8000000000, -0.6000000000]) {
							cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
						}
						#translate(v = [-1.8000000000, -3.0000000000, 2.5000000000]) {
							cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
						}
						#translate(v = [-1.8000000000, -1.8000000000, 2.8000000000]) {
							cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
						}
					}
					union();
				}
			}
		}
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 1.8000000000);
		}
		translate(v = [30, 0, -100.0000000000]) {
			cylinder(h = 200, r = 1.8000000000);
		}
	}
}