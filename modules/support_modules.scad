include <global_variables.scad>

module support_body (dynamic_support_depth) {
    cube([support_width, dynamic_support_depth, support_height]);
}

module jagged_edge () {
    cube([jagged_edge_width, jagged_edge_depth, support_height]);
}

module support (dynamic_support_depth) {
    union () {
        translate([jagged_edge_width_offset / 2, 0, 0]) jagged_edge();
        translate([0, jagged_edge_depth, 0]) support_body(dynamic_support_depth);
        translate([jagged_edge_width_offset / 2, dynamic_support_depth + jagged_edge_depth, 0]) jagged_edge();
    };
}

