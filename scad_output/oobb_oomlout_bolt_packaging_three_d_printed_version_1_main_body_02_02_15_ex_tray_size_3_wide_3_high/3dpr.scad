$fn = 50;


difference() {
	union() {
		translate(v = [0, -45.0000000000, 0]) {
			hull() {
				translate(v = [-40.2500000000, 40.2500000000, 0]) {
					cylinder(h = 15, r = 5);
				}
				translate(v = [40.2500000000, 40.2500000000, 0]) {
					cylinder(h = 15, r = 5);
				}
				translate(v = [-40.2500000000, -40.2500000000, 0]) {
					cylinder(h = 15, r = 5);
				}
				translate(v = [40.2500000000, -40.2500000000, 0]) {
					cylinder(h = 15, r = 5);
				}
			}
		}
		translate(v = [29.2500000000, 7.5000000000, 8.0000000000]) {
			rotate(a = [0, 90, 0]) {
				cylinder(h = 16, r = 6.0000000000);
			}
		}
		translate(v = [29.2500000000, -15.0000000000, 2.0000000000]) {
			cube(size = [16, 22.5000000000, 12]);
		}
		translate(v = [-45.2500000000, 7.5000000000, 8.0000000000]) {
			rotate(a = [0, 90, 0]) {
				cylinder(h = 16, r = 6.0000000000);
			}
		}
		translate(v = [-45.2500000000, -15.0000000000, 2.0000000000]) {
			cube(size = [16, 22.5000000000, 12]);
		}
		translate(v = [0, -90, 0.0000000000]) {
			cylinder(h = 15, r = 3.0000000000);
		}
		translate(v = [0, -90, 0.0000000000]) {
			cylinder(h = 5, r = 5.0000000000);
		}
	}
	union() {
		translate(v = [45.2500000000, 7.5000000000, 8.0000000000]) {
			rotate(a = [0, 90, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -16.0000000000]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.8000000000, -3.0000000000, -0.3000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, -0.6000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -3.0000000000, 2.5000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, 2.8000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										linear_extrude(height = 2.5000000000) {
											polygon(points = [[3.4620000000, 0.0000000000], [1.7310000000, 2.9981799479], [-1.7310000000, 2.9981799479], [-3.4620000000, 0.0000000000], [-1.7310000000, -2.9981799479], [1.7310000000, -2.9981799479]]);
										}
										translate(v = [-1.8000000000, -3.0000000000, -0.3000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, -0.6000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -3.0000000000, 2.5000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, 2.8000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -3.0000000000, -0.3000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, -0.6000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -3.0000000000, 2.5000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, 2.8000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -16.0000000000]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.8000000000, -3.0000000000, -0.3000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, -0.6000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -3.0000000000, 2.5000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, 2.8000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										linear_extrude(height = 2.5000000000) {
											polygon(points = [[3.4620000000, 0.0000000000], [1.7310000000, 2.9981799479], [-1.7310000000, 2.9981799479], [-3.4620000000, 0.0000000000], [-1.7310000000, -2.9981799479], [1.7310000000, -2.9981799479]]);
										}
										translate(v = [-1.8000000000, -3.0000000000, -0.3000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, -0.6000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -3.0000000000, 2.5000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, 2.8000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -3.0000000000, -0.3000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, -0.6000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -3.0000000000, 2.5000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, 2.8000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -16.0000000000]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.8000000000, -3.0000000000, -0.3000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, -0.6000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -3.0000000000, 2.5000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, 2.8000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										linear_extrude(height = 2.5000000000) {
											polygon(points = [[3.4620000000, 0.0000000000], [1.7310000000, 2.9981799479], [-1.7310000000, 2.9981799479], [-3.4620000000, 0.0000000000], [-1.7310000000, -2.9981799479], [1.7310000000, -2.9981799479]]);
										}
										translate(v = [-1.8000000000, -3.0000000000, -0.3000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, -0.6000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -3.0000000000, 2.5000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, 2.8000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -3.0000000000, -0.3000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, -0.6000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -3.0000000000, 2.5000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, 2.8000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -16.0000000000]) {
							cylinder(h = 16, r = 1.5000000000);
						}
						translate(v = [0, 0, -1.9000000000]) {
							cylinder(h = 1.9000000000, r1 = 1.8000000000, r2 = 3.6000000000);
						}
						translate(v = [0, 0, -16.0000000000]) {
							cylinder(h = 16, r = 1.8000000000);
						}
						translate(v = [0, 0, -16.0000000000]) {
							cylinder(h = 16, r = 1.5000000000);
						}
					}
					union();
				}
			}
		}
		translate(v = [-45.2500000000, 7.5000000000, 8.0000000000]) {
			rotate(a = [0, 270, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -16.0000000000]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.8000000000, -3.0000000000, -0.3000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, -0.6000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -3.0000000000, 2.5000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, 2.8000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										linear_extrude(height = 2.5000000000) {
											polygon(points = [[3.4620000000, 0.0000000000], [1.7310000000, 2.9981799479], [-1.7310000000, 2.9981799479], [-3.4620000000, 0.0000000000], [-1.7310000000, -2.9981799479], [1.7310000000, -2.9981799479]]);
										}
										translate(v = [-1.8000000000, -3.0000000000, -0.3000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, -0.6000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -3.0000000000, 2.5000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, 2.8000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -3.0000000000, -0.3000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, -0.6000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -3.0000000000, 2.5000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, 2.8000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -16.0000000000]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.8000000000, -3.0000000000, -0.3000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, -0.6000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -3.0000000000, 2.5000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, 2.8000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										linear_extrude(height = 2.5000000000) {
											polygon(points = [[3.4620000000, 0.0000000000], [1.7310000000, 2.9981799479], [-1.7310000000, 2.9981799479], [-3.4620000000, 0.0000000000], [-1.7310000000, -2.9981799479], [1.7310000000, -2.9981799479]]);
										}
										translate(v = [-1.8000000000, -3.0000000000, -0.3000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, -0.6000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -3.0000000000, 2.5000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, 2.8000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -3.0000000000, -0.3000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, -0.6000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -3.0000000000, 2.5000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, 2.8000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -16.0000000000]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.8000000000, -3.0000000000, -0.3000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, -0.6000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -3.0000000000, 2.5000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, 2.8000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										linear_extrude(height = 2.5000000000) {
											polygon(points = [[3.4620000000, 0.0000000000], [1.7310000000, 2.9981799479], [-1.7310000000, 2.9981799479], [-3.4620000000, 0.0000000000], [-1.7310000000, -2.9981799479], [1.7310000000, -2.9981799479]]);
										}
										translate(v = [-1.8000000000, -3.0000000000, -0.3000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, -0.6000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -3.0000000000, 2.5000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, 2.8000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -3.0000000000, -0.3000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, -0.6000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -3.0000000000, 2.5000000000]) {
											cube(size = [3.6000000000, 6.0000000000, 0.3000000000]);
										}
										translate(v = [-1.8000000000, -1.8000000000, 2.8000000000]) {
											cube(size = [3.6000000000, 3.6000000000, 0.3000000000]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -16.0000000000]) {
							cylinder(h = 16, r = 1.5000000000);
						}
						translate(v = [0, 0, -1.9000000000]) {
							cylinder(h = 1.9000000000, r1 = 1.8000000000, r2 = 3.6000000000);
						}
						translate(v = [0, 0, -16.0000000000]) {
							cylinder(h = 16, r = 1.8000000000);
						}
						translate(v = [0, 0, -16.0000000000]) {
							cylinder(h = 16, r = 1.5000000000);
						}
					}
					union();
				}
			}
		}
		translate(v = [0, -90, 0]) {
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
		translate(v = [-22.5000000000, -67.5000000000, 1]) {
			hull() {
				union() {
					translate(v = [-17.2500000000, 17.2500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [-17.2500000000, 17.2500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [-17.2500000000, 17.2500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [17.2500000000, 17.2500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [17.2500000000, 17.2500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [17.2500000000, 17.2500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [-17.2500000000, -17.2500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [-17.2500000000, -17.2500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [-17.2500000000, -17.2500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [17.2500000000, -17.2500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [17.2500000000, -17.2500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [17.2500000000, -17.2500000000, 25]) {
						sphere(r = 5);
					}
				}
			}
		}
		translate(v = [-22.5000000000, -22.5000000000, 1]) {
			hull() {
				union() {
					translate(v = [-17.2500000000, 17.2500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [-17.2500000000, 17.2500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [-17.2500000000, 17.2500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [17.2500000000, 17.2500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [17.2500000000, 17.2500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [17.2500000000, 17.2500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [-17.2500000000, -17.2500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [-17.2500000000, -17.2500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [-17.2500000000, -17.2500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [17.2500000000, -17.2500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [17.2500000000, -17.2500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [17.2500000000, -17.2500000000, 25]) {
						sphere(r = 5);
					}
				}
			}
		}
		translate(v = [22.5000000000, -67.5000000000, 1]) {
			hull() {
				union() {
					translate(v = [-17.2500000000, 17.2500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [-17.2500000000, 17.2500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [-17.2500000000, 17.2500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [17.2500000000, 17.2500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [17.2500000000, 17.2500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [17.2500000000, 17.2500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [-17.2500000000, -17.2500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [-17.2500000000, -17.2500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [-17.2500000000, -17.2500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [17.2500000000, -17.2500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [17.2500000000, -17.2500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [17.2500000000, -17.2500000000, 25]) {
						sphere(r = 5);
					}
				}
			}
		}
		translate(v = [22.5000000000, -22.5000000000, 1]) {
			hull() {
				union() {
					translate(v = [-17.2500000000, 17.2500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [-17.2500000000, 17.2500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [-17.2500000000, 17.2500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [17.2500000000, 17.2500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [17.2500000000, 17.2500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [17.2500000000, 17.2500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [-17.2500000000, -17.2500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [-17.2500000000, -17.2500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [-17.2500000000, -17.2500000000, 25]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [17.2500000000, -17.2500000000, 5]) {
						cylinder(h = 20, r = 5);
					}
					translate(v = [17.2500000000, -17.2500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [17.2500000000, -17.2500000000, 25]) {
						sphere(r = 5);
					}
				}
			}
		}
		translate(v = [34.5000000000, 0.2500000000, 0.5000000000]) {
			cube(size = [5.5000000000, 14.5000000000, 15]);
		}
		translate(v = [29.7500000000, 7.5000000000, 8.0000000000]) {
			rotate(a = [0, 90, 0]) {
				cylinder(h = 15, r = 1.8000000000);
			}
		}
		translate(v = [-40.0000000000, 0.2500000000, 0.5000000000]) {
			cube(size = [5.5000000000, 14.5000000000, 15]);
		}
		translate(v = [-44.7500000000, 7.5000000000, 8.0000000000]) {
			rotate(a = [0, 90, 0]) {
				cylinder(h = 15, r = 1.8000000000);
			}
		}
		translate(v = [0, -90, -100.0000000000]) {
			cylinder(h = 200, r = 1.8000000000);
		}
	}
}