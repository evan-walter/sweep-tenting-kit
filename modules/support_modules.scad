module supportBody (depth) {
    cube([10, depth, 0.2]);
}

module jaggedEdge () {
    cube([9, 0.3, 0.2]);
}

module support (depth) {
    union (depth) {
        translate([0.5, 0, 0]) jaggedEdge();
        translate([0, 0.3, 0]) supportBody(depth);
        translate([0.5, depth + 0.3, 0]) jaggedEdge();
    };
}

