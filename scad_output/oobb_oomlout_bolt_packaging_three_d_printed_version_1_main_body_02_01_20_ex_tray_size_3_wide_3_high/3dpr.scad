$fn = 50;


difference() {
	union() {
		translate(v = [0, -22.5000000000, 0]) {
			hull() {
				translate(v = [-40.2500000000, 17.7500000000, 0]) {
					cylinder(h = 20, r = 5);
				}
				translate(v = [40.2500000000, 17.7500000000, 0]) {
					cylinder(h = 20, r = 5);
				}
				translate(v = [-40.2500000000, -17.7500000000, 0]) {
					cylinder(h = 20, r = 5);
				}
				translate(v = [40.2500000000, -17.7500000000, 0]) {
					cylinder(h = 20, r = 5);
				}
			}
		}
		translate(v = [25.2500000000, 7.5000000000, 12.5000000000]) {
			rotate(a = [0, 90, 0]) {
				cylinder(h = 20, r = 6.0000000000);
			}
		}
		translate(v = [25.2500000000, -15.0000000000, 0.0000000000]) {
			cube(size = [20, 22.5000000000, 16]);
		}
		translate(v = [25.2500000000, -13.5000000000, 0.0000000000]) {
			cube(size = [20, 27, 12.5000000000]);
		}
		translate(v = [-45.2500000000, 7.5000000000, 12.5000000000]) {
			rotate(a = [0, 90, 0]) {
				cylinder(h = 20, r = 6.0000000000);
			}
		}
		translate(v = [-45.2500000000, -15.0000000000, 0.0000000000]) {
			cube(size = [20, 22.5000000000, 16]);
		}
		translate(v = [-45.2500000000, -13.5000000000, 0.0000000000]) {
			cube(size = [20, 27, 12.5000000000]);
		}
		translate(v = [5, -52.5000000000, 0.0000000000]) {
			hull() {
				translate(v = [-10.0000000000, 2.5000000000, 0]) {
					cylinder(h = 17, r = 5);
				}
				translate(v = [10.0000000000, 2.5000000000, 0]) {
					cylinder(h = 17, r = 5);
				}
				translate(v = [-10.0000000000, -2.5000000000, 0]) {
					cylinder(h = 17, r = 5);
				}
				translate(v = [10.0000000000, -2.5000000000, 0]) {
					cylinder(h = 17, r = 5);
				}
			}
		}
		translate(v = [-10.0000000000, -50.0000000000, 0.0000000000]) {
			cube(size = [30, 5, 17]);
		}
	}
	union() {
		translate(v = [45.2500000000, 7.5000000000, 12.5000000000]) {
			rotate(a = [0, 90, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -20.0000000000]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										linear_extrude(height = 2.5000000000) {
											polygon(points = [[3.4620000000, 0.0000000000], [1.7310000000, 2.9981799479], [-1.7310000000, 2.9981799479], [-3.4620000000, 0.0000000000], [-1.7310000000, -2.9981799479], [1.7310000000, -2.9981799479]]);
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
										linear_extrude(height = 2.5000000000) {
											polygon(points = [[3.4620000000, 0.0000000000], [1.7310000000, 2.9981799479], [-1.7310000000, 2.9981799479], [-3.4620000000, 0.0000000000], [-1.7310000000, -2.9981799479], [1.7310000000, -2.9981799479]]);
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
										linear_extrude(height = 2.5000000000) {
											polygon(points = [[3.4620000000, 0.0000000000], [1.7310000000, 2.9981799479], [-1.7310000000, 2.9981799479], [-3.4620000000, 0.0000000000], [-1.7310000000, -2.9981799479], [1.7310000000, -2.9981799479]]);
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
		translate(v = [-45.2500000000, 7.5000000000, 12.5000000000]) {
			rotate(a = [0, 270, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -20.0000000000]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										linear_extrude(height = 2.5000000000) {
											polygon(points = [[3.4620000000, 0.0000000000], [1.7310000000, 2.9981799479], [-1.7310000000, 2.9981799479], [-3.4620000000, 0.0000000000], [-1.7310000000, -2.9981799479], [1.7310000000, -2.9981799479]]);
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
										linear_extrude(height = 2.5000000000) {
											polygon(points = [[3.4620000000, 0.0000000000], [1.7310000000, 2.9981799479], [-1.7310000000, 2.9981799479], [-3.4620000000, 0.0000000000], [-1.7310000000, -2.9981799479], [1.7310000000, -2.9981799479]]);
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
										linear_extrude(height = 2.5000000000) {
											polygon(points = [[3.4620000000, 0.0000000000], [1.7310000000, 2.9981799479], [-1.7310000000, 2.9981799479], [-3.4620000000, 0.0000000000], [-1.7310000000, -2.9981799479], [1.7310000000, -2.9981799479]]);
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
		translate(v = [20.0000000000, -52.5000000000, 12.5000000000]) {
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
		translate(v = [-22.5000000000, -22.5000000000, 1]) {
			hull() {
				union() {
					translate(v = [-17.2500000000, 17.2500000000, 5]) {
						cylinder(h = 30, r = 5);
					}
					translate(v = [-17.2500000000, 17.2500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [-17.2500000000, 17.2500000000, 35]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [17.2500000000, 17.2500000000, 5]) {
						cylinder(h = 30, r = 5);
					}
					translate(v = [17.2500000000, 17.2500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [17.2500000000, 17.2500000000, 35]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [-17.2500000000, -17.2500000000, 5]) {
						cylinder(h = 30, r = 5);
					}
					translate(v = [-17.2500000000, -17.2500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [-17.2500000000, -17.2500000000, 35]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [17.2500000000, -17.2500000000, 5]) {
						cylinder(h = 30, r = 5);
					}
					translate(v = [17.2500000000, -17.2500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [17.2500000000, -17.2500000000, 35]) {
						sphere(r = 5);
					}
				}
			}
		}
		translate(v = [22.5000000000, -22.5000000000, 1]) {
			hull() {
				union() {
					translate(v = [-17.2500000000, 17.2500000000, 5]) {
						cylinder(h = 30, r = 5);
					}
					translate(v = [-17.2500000000, 17.2500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [-17.2500000000, 17.2500000000, 35]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [17.2500000000, 17.2500000000, 5]) {
						cylinder(h = 30, r = 5);
					}
					translate(v = [17.2500000000, 17.2500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [17.2500000000, 17.2500000000, 35]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [-17.2500000000, -17.2500000000, 5]) {
						cylinder(h = 30, r = 5);
					}
					translate(v = [-17.2500000000, -17.2500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [-17.2500000000, -17.2500000000, 35]) {
						sphere(r = 5);
					}
				}
				union() {
					translate(v = [17.2500000000, -17.2500000000, 5]) {
						cylinder(h = 30, r = 5);
					}
					translate(v = [17.2500000000, -17.2500000000, 5]) {
						sphere(r = 5);
					}
					translate(v = [17.2500000000, -17.2500000000, 35]) {
						sphere(r = 5);
					}
				}
			}
		}
		translate(v = [29.7500000000, 0.2500000000, 0.0000000000]) {
			cube(size = [11, 17.5000000000, 20]);
		}
		translate(v = [-40.7500000000, 0.2500000000, 0.0000000000]) {
			cube(size = [11, 17.5000000000, 20]);
		}
		translate(v = [-5.5000000000, -62.7500000000, 0.0000000000]) {
			cube(size = [11, 17.5000000000, 20]);
		}
		translate(v = [11.0000000000, -62.5000000000, 7.5000000000]) {
			cube(size = [6, 15, 10]);
		}
	}
}