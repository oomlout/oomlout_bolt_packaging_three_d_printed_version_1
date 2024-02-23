$fn = 50;


difference() {
	union() {
		translate(v = [0, -15.0000000000, 0]) {
			hull() {
				translate(v = [-25.2500000000, 10.2500000000, 0]) {
					cylinder(h = 1, r = 5);
				}
				translate(v = [25.2500000000, 10.2500000000, 0]) {
					cylinder(h = 1, r = 5);
				}
				translate(v = [-25.2500000000, -10.2500000000, 0]) {
					cylinder(h = 1, r = 5);
				}
				translate(v = [25.2500000000, -10.2500000000, 0]) {
					cylinder(h = 1, r = 5);
				}
			}
		}
		translate(v = [-15.0000000000, -15.0000000000, -1]) {
			hull() {
				translate(v = [-9.2500000000, 9.2500000000, 0]) {
					cylinder(h = 2, r = 5);
				}
				translate(v = [9.2500000000, 9.2500000000, 0]) {
					cylinder(h = 2, r = 5);
				}
				translate(v = [-9.2500000000, -9.2500000000, 0]) {
					cylinder(h = 2, r = 5);
				}
				translate(v = [9.2500000000, -9.2500000000, 0]) {
					cylinder(h = 2, r = 5);
				}
			}
		}
		translate(v = [15.0000000000, -15.0000000000, -1]) {
			hull() {
				translate(v = [-9.2500000000, 9.2500000000, 0]) {
					cylinder(h = 2, r = 5);
				}
				translate(v = [9.2500000000, 9.2500000000, 0]) {
					cylinder(h = 2, r = 5);
				}
				translate(v = [-9.2500000000, -9.2500000000, 0]) {
					cylinder(h = 2, r = 5);
				}
				translate(v = [9.2500000000, -9.2500000000, 0]) {
					cylinder(h = 2, r = 5);
				}
			}
		}
		translate(v = [20.2500000000, 7.5000000000, -7.5000000000]) {
			rotate(a = [0, 90, 0]) {
				cylinder(h = 5, r = 7.0000000000);
			}
		}
		translate(v = [20.2500000000, 0.5000000000, -7.5000000000]) {
			cube(size = [5, 14, 7.5000000000]);
		}
		translate(v = [15.2500000000, -15.0000000000, 0.0000000000]) {
			cube(size = [15, 30, 1]);
		}
		translate(v = [-25.2500000000, 7.5000000000, -7.5000000000]) {
			rotate(a = [0, 90, 0]) {
				cylinder(h = 5, r = 7.0000000000);
			}
		}
		translate(v = [-25.2500000000, 0.5000000000, -7.5000000000]) {
			cube(size = [5, 14, 7.5000000000]);
		}
		translate(v = [-30.2500000000, -15.0000000000, 0.0000000000]) {
			cube(size = [15, 30, 1]);
		}
	}
	union() {
		translate(v = [15.2500000000, 7.5000000000, -7.5000000000]) {
			rotate(a = [0, 90, 0]) {
				cylinder(h = 15, r = 1.8000000000);
			}
		}
		translate(v = [-30.2500000000, 7.5000000000, -7.5000000000]) {
			rotate(a = [0, 90, 0]) {
				cylinder(h = 15, r = 1.8000000000);
			}
		}
	}
}