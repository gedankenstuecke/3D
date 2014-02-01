$fn=3;

union(){
	translate([-4,-4,-4]) difference(){
		translate([-1,-1,0]) cube([160,60,10]);
		translate([0,0,-1]) cube([158,58,10]);
	}

	difference(){
		cube([150,50,5]);
		for (i = [0:10]){
			translate([i*15,-0.5,-1.5]) rotate([-90,-90,0]) cylinder(h=51, r=5);
		}
		for (i = [0:2]){
			translate([-0.5,i*25,-1.5]) rotate([180,-90,0]) cylinder(h=151, r=5);
		}
		difference(){
			for (i = [0:1]){
				for (j = [0:9]){
					translate([j*15+6.5,i*25+12.5,-0.5]) difference(){
						cylinder(h=1.5,r=5);
						rotate([0,0,180]) cylinder(h=1.5, r=2.51);
					}
				}
			}
		}
	}
}