// Units are in centimeters.

module body () {
    cube([10, 11, 0.2]);
}

module jaggedEdge () {
    cube([9, 0.3, 0.2]);
}

union () {
    translate([0.5, 0, 0]) jaggedEdge();
    translate([0, 0.3, 0]) body();
    translate([0.5, 11.3, 0]) jaggedEdge();
};

