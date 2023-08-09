include <../global_variables.scad>

module support_body (dynamic_support_depth) {
    cube([SUPPORT_WIDTH, dynamic_support_depth, SUPPORT_HEIGHT]);
}

module jagged_edge () {
    cube([JAGGED_EDGE_WIDTH, JAGGED_EDGE_DEPTH, SUPPORT_HEIGHT]);
}

module support (dynamic_support_depth) {
    union () {
        translate([JAGGED_EDGE_WIDTH_OFFSET / 2, 0, 0]) jagged_edge();
        translate([0, JAGGED_EDGE_DEPTH, 0]) support_body(dynamic_support_depth);
        translate([JAGGED_EDGE_WIDTH_OFFSET / 2, dynamic_support_depth + JAGGED_EDGE_DEPTH, 0]) jagged_edge();
    };
}

