$fn = 50;


difference() {
	union() {
		translate(v = [0, -30.0000000000, 0]) {
			hull() {
				translate(v = [-85.2500000000, 25.2500000000, 0]) {
					cylinder(h = 15, r = 5);
				}
				translate(v = [85.2500000000, 25.2500000000, 0]) {
					cylinder(h = 15, r = 5);
				}
				translate(v = [-85.2500000000, -25.2500000000, 0]) {
					cylinder(h = 15, r = 5);
				}
				translate(v = [85.2500000000, -25.2500000000, 0]) {
					cylinder(h = 15, r = 5);
				}
			}
		}
		translate(v = [70.2500000000, 7.5000000000, 7.5000000000]) {
			rotate(a = [0, 90, 0]) {
				cylinder(h = 20, r = 6.0000000000);
			}
		}
		translate(v = [70.2500000000, -15.0000000000, 0.0000000000]) {
			cube(size = [20, 22.5000000000, 11]);
		}
		translate(v = [70.2500000000, -13.5000000000, 0.0000000000]) {
			cube(size = [20, 27, 7.5000000000]);
		}
		translate(v = [-90.2500000000, 7.5000000000, 7.5000000000]) {
			rotate(a = [0, 90, 0]) {
				cylinder(h = 20, r = 6.0000000000);
			}
		}
		translate(v = [-90.2500000000, -15.0000000000, 0.0000000000]) {
			cube(size = [20, 22.5000000000, 11]);
		}
		translate(v = [-90.2500000000, -13.5000000000, 0.0000000000]) {
			cube(size = [20, 27, 7.5000000000]);
		}
		translate(v = [0, -67.5000000000, 0.0000000000]) {
			hull() {
				translate(v = [-5.0000000000, 2.5000000000, 0]) {
					cylinder(h = 12, r = 5);
				}
				translate(v = [5.0000000000, 2.5000000000, 0]) {
					cylinder(h = 12, r = 5);
				}
				translate(v = [-5.0000000000, -2.5000000000, 0]) {
					cylinder(h = 12, r = 5);
				}
				translate(v = [5.0000000000, -2.5000000000, 0]) {
					cylinder(h = 12, r = 5);
				}
			}
		}
		translate(v = [-10.0000000000, -65.0000000000, 0.0000000000]) {
			cube(size = [20, 5, 12]);
		}
	}
	union() {
		translate(v = [90.2500000000, 7.5000000000, 7.5000000000]) {
			rotate(a = [0, 90, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -20.0000000000]) {
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
						translate(v = [0, 0, -20.0000000000]) {
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
						translate(v = [0, 0, -20.0000000000]) {
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
						translate(v = [0, 0, -20.0000000000]) {
							cylinder(h = 20, r = 1.5000000000);
						}
						translate(v = [0, 0, -1.9000000000]) {
							cylinder(h = 1.9000000000, r1 = 1.8000000000, r2 = 3.6000000000);
						}
						translate(v = [0, 0, -20.0000000000]) {
							cylinder(h = 20, r = 1.8000000000);
						}
						translate(v = [0, 0, -20.0000000000]) {
							cylinder(h = 20, r = 1.5000000000);
						}
					}
					union();
				}
			}
		}
		translate(v = [-90.2500000000, 7.5000000000, 7.5000000000]) {
			rotate(a = [0, 270, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -20.0000000000]) {
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
						translate(v = [0, 0, -20.0000000000]) {
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
						translate(v = [0, 0, -20.0000000000]) {
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
						translate(v = [0, 0, -20.0000000000]) {
							cylinder(h = 20, r = 1.5000000000);
						}
						translate(v = [0, 0, -1.9000000000]) {
							cylinder(h = 1.9000000000, r1 = 1.8000000000, r2 = 3.6000000000);
						}
						translate(v = [0, 0, -20.0000000000]) {
							cylinder(h = 20, r = 1.8000000000);
						}
						translate(v = [0, 0, -20.0000000000]) {
							cylinder(h = 20, r = 1.5000000000);
						}
					}
					union();
				}
			}
		}
		translate(v = [10.0000000000, -67.5000000000, 7.5000000000]) {
			rotate(a = [0, 90, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -22.0000000000]) {
							rotate(a = [0, 0, 30.0000000000]) {
								difference() {
									union() {
										#translate(v = [-1.8000000000, -3.0000000000, -0.3000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										#translate(v = [-1.8000000000, -1.8000000000, -0.6000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										#translate(v = [-1.8000000000, -3.0000000000, 5]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										#translate(v = [-1.8000000000, -1.8000000000, 5.3000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										#linear_extrude(height = 5) {
											polygon(points = [[5.9142500000, 0.0000000000], [2.9571250000, 5.1218907443], [-2.9571250000, 5.1218907443], [-5.9142500000, 0.0000000000], [-2.9571250000, -5.1218907443], [2.9571250000, -5.1218907443]]);
										}
										#translate(v = [-1.8000000000, -3.0000000000, -0.3000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										#translate(v = [-1.8000000000, -1.8000000000, -0.6000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										#translate(v = [-1.8000000000, -3.0000000000, 5]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										#translate(v = [-1.8000000000, -1.8000000000, 5.3000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										#translate(v = [-1.8000000000, -3.0000000000, -0.3000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										#translate(v = [-1.8000000000, -1.8000000000, -0.6000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										#translate(v = [-1.8000000000, -3.0000000000, 5]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										#translate(v = [-1.8000000000, -1.8000000000, 5.3000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -22.0000000000]) {
							rotate(a = [0, 0, 30.0000000000]) {
								difference() {
									union() {
										#translate(v = [-1.8000000000, -3.0000000000, -0.3000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										#translate(v = [-1.8000000000, -1.8000000000, -0.6000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										#translate(v = [-1.8000000000, -3.0000000000, 5]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										#translate(v = [-1.8000000000, -1.8000000000, 5.3000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										#linear_extrude(height = 5) {
											polygon(points = [[5.9142500000, 0.0000000000], [2.9571250000, 5.1218907443], [-2.9571250000, 5.1218907443], [-5.9142500000, 0.0000000000], [-2.9571250000, -5.1218907443], [2.9571250000, -5.1218907443]]);
										}
										#translate(v = [-1.8000000000, -3.0000000000, -0.3000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										#translate(v = [-1.8000000000, -1.8000000000, -0.6000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										#translate(v = [-1.8000000000, -3.0000000000, 5]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										#translate(v = [-1.8000000000, -1.8000000000, 5.3000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										#translate(v = [-1.8000000000, -3.0000000000, -0.3000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										#translate(v = [-1.8000000000, -1.8000000000, -0.6000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										#translate(v = [-1.8000000000, -3.0000000000, 5]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										#translate(v = [-1.8000000000, -1.8000000000, 5.3000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -22.0000000000]) {
							rotate(a = [0, 0, 30.0000000000]) {
								difference() {
									union() {
										#translate(v = [-1.8000000000, -3.0000000000, -0.3000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										#translate(v = [-1.8000000000, -1.8000000000, -0.6000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										#translate(v = [-1.8000000000, -3.0000000000, 5]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										#translate(v = [-1.8000000000, -1.8000000000, 5.3000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										#linear_extrude(height = 5) {
											polygon(points = [[5.9142500000, 0.0000000000], [2.9571250000, 5.1218907443], [-2.9571250000, 5.1218907443], [-5.9142500000, 0.0000000000], [-2.9571250000, -5.1218907443], [2.9571250000, -5.1218907443]]);
										}
										#translate(v = [-1.8000000000, -3.0000000000, -0.3000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										#translate(v = [-1.8000000000, -1.8000000000, -0.6000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										#translate(v = [-1.8000000000, -3.0000000000, 5]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										#translate(v = [-1.8000000000, -1.8000000000, 5.3000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										#translate(v = [-1.8000000000, -3.0000000000, -0.3000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										#translate(v = [-1.8000000000, -1.8000000000, -0.6000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										#translate(v = [-1.8000000000, -3.0000000000, 5]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										#translate(v = [-1.8000000000, -1.8000000000, 5.3000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -22.0000000000]) {
							cylinder(h = 22, r = 3.0000000000);
						}
						cylinder(h = 6.2000000000, r = 5.5000000000);
						translate(v = [0, 0, -22.0000000000]) {
							cylinder(h = 22, r = 3.2500000000);
						}
						translate(v = [-1.7500000000, -3.2500000000, -0.3000000000]) {
							cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
						}
						translate(v = [-1.7500000000, -1.7500000000, -0.6000000000]) {
							cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
						}
						translate(v = [0, 0, -22.0000000000]) {
							cylinder(h = 22, r = 3.0000000000);
						}
					}
					union();
				}
			}
		}
		translate(v = [-67.5000000000, -45.0000000000, 1]) {
			hull() {
				union() {
					translate(v = [-17.2500000000, 9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [-17.2500000000, 9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [-17.2500000000, 9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [17.2500000000, 9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [17.2500000000, 9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [17.2500000000, 9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [-17.2500000000, -9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [-17.2500000000, -9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [-17.2500000000, -9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [17.2500000000, -9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [17.2500000000, -9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [17.2500000000, -9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
			}
		}
		translate(v = [-67.5000000000, -15.0000000000, 1]) {
			hull() {
				union() {
					translate(v = [-17.2500000000, 9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [-17.2500000000, 9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [-17.2500000000, 9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [17.2500000000, 9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [17.2500000000, 9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [17.2500000000, 9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [-17.2500000000, -9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [-17.2500000000, -9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [-17.2500000000, -9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [17.2500000000, -9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [17.2500000000, -9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [17.2500000000, -9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
			}
		}
		translate(v = [-22.5000000000, -45.0000000000, 1]) {
			hull() {
				union() {
					translate(v = [-17.2500000000, 9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [-17.2500000000, 9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [-17.2500000000, 9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [17.2500000000, 9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [17.2500000000, 9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [17.2500000000, 9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [-17.2500000000, -9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [-17.2500000000, -9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [-17.2500000000, -9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [17.2500000000, -9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [17.2500000000, -9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [17.2500000000, -9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
			}
		}
		translate(v = [-22.5000000000, -15.0000000000, 1]) {
			hull() {
				union() {
					translate(v = [-17.2500000000, 9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [-17.2500000000, 9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [-17.2500000000, 9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [17.2500000000, 9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [17.2500000000, 9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [17.2500000000, 9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [-17.2500000000, -9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [-17.2500000000, -9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [-17.2500000000, -9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [17.2500000000, -9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [17.2500000000, -9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [17.2500000000, -9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
			}
		}
		translate(v = [22.5000000000, -45.0000000000, 1]) {
			hull() {
				union() {
					translate(v = [-17.2500000000, 9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [-17.2500000000, 9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [-17.2500000000, 9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [17.2500000000, 9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [17.2500000000, 9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [17.2500000000, 9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [-17.2500000000, -9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [-17.2500000000, -9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [-17.2500000000, -9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [17.2500000000, -9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [17.2500000000, -9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [17.2500000000, -9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
			}
		}
		translate(v = [22.5000000000, -15.0000000000, 1]) {
			hull() {
				union() {
					translate(v = [-17.2500000000, 9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [-17.2500000000, 9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [-17.2500000000, 9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [17.2500000000, 9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [17.2500000000, 9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [17.2500000000, 9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [-17.2500000000, -9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [-17.2500000000, -9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [-17.2500000000, -9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [17.2500000000, -9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [17.2500000000, -9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [17.2500000000, -9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
			}
		}
		translate(v = [67.5000000000, -45.0000000000, 1]) {
			hull() {
				union() {
					translate(v = [-17.2500000000, 9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [-17.2500000000, 9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [-17.2500000000, 9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [17.2500000000, 9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [17.2500000000, 9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [17.2500000000, 9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [-17.2500000000, -9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [-17.2500000000, -9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [-17.2500000000, -9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [17.2500000000, -9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [17.2500000000, -9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [17.2500000000, -9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
			}
		}
		translate(v = [67.5000000000, -15.0000000000, 1]) {
			hull() {
				union() {
					translate(v = [-17.2500000000, 9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [-17.2500000000, 9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [-17.2500000000, 9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [17.2500000000, 9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [17.2500000000, 9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [17.2500000000, 9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [-17.2500000000, -9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [-17.2500000000, -9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [-17.2500000000, -9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [17.2500000000, -9.7500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [17.2500000000, -9.7500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [17.2500000000, -9.7500000000, 25]) {
						sphere(r = 5);
					}
				}
			}
		}
		translate(v = [74.7500000000, 0.2500000000, 0.0000000000]) {
			cube(size = [11, 17.5000000000, 15]);
		}
		translate(v = [-85.7500000000, 0.2500000000, 0.0000000000]) {
			cube(size = [11, 17.5000000000, 15]);
		}
		translate(v = [-5.5000000000, -77.7500000000, 0.0000000000]) {
			cube(size = [11, 17.5000000000, 15]);
		}
	}
}