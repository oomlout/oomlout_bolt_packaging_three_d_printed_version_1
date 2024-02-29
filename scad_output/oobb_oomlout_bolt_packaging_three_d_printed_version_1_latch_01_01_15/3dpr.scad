$fn = 50;


difference() {
	union() {
		translate(v = [5, 0, -7.5000000000]) {
			hull() {
				translate(v = [-10.0000000000, 2.5000000000, 0]) {
					cylinder(h = 12, r = 5);
				}
				translate(v = [10.0000000000, 2.5000000000, 0]) {
					cylinder(h = 12, r = 5);
				}
				translate(v = [-10.0000000000, -2.5000000000, 0]) {
					cylinder(h = 12, r = 5);
				}
				translate(v = [10.0000000000, -2.5000000000, 0]) {
					cylinder(h = 12, r = 5);
				}
			}
		}
		translate(v = [-10.0000000000, 2.5000000000, -7.5000000000]) {
			cube(size = [30, 5, 12]);
		}
		translate(v = [40.0000000000, 0, 0.0000000000]) {
			rotate(a = [0, 90, 0]) {
				cylinder(h = 10, r = 7.0000000000);
			}
		}
		translate(v = [40.0000000000, -7.0000000000, 0]) {
			cube(size = [10, 14, 7.5000000000]);
		}
		translate(v = [40.0000000000, -7.5000000000, 7.5000000000]) {
			cube(size = [10, 14.5000000000, 3]);
		}
	}
	union() {
		translate(v = [20.0000000000, 0, 0]) {
			rotate(a = [0, 90, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -32.0000000000]) {
							cylinder(h = 32, r = 3.0000000000);
						}
						cylinder(h = 6.2000000000, r = 5.5000000000);
						translate(v = [0, 0, -32.0000000000]) {
							cylinder(h = 32, r = 3.2500000000);
						}
						translate(v = [-1.7500000000, -3.2500000000, -0.3000000000]) {
							cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
						}
						translate(v = [-1.7500000000, -1.7500000000, -0.6000000000]) {
							cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
						}
						translate(v = [0, 0, -32.0000000000]) {
							cylinder(h = 32, r = 3.0000000000);
						}
					}
					union();
				}
			}
		}
		translate(v = [-5.5000000000, -10.2500000000, -7.5000000000]) {
			cube(size = [11, 17.5000000000, 15]);
		}
		translate(v = [11.0000000000, -10.0000000000, -5.0000000000]) {
			cube(size = [6, 15, 10]);
		}
		translate(v = [40.0000000000, 0, 0]) {
			rotate(a = [0, 90, 0]) {
				cylinder(h = 10, r = 3.2500000000);
			}
		}
	}
}