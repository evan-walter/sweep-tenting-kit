include <global_variables.scad>

module support_body (dynamic_support_depth) {
    cube([support_width, dynamic_support_depth, support_height]);
}

module jagged_edge () {
    cube([bar_width - jagged_edge_offset, jagged_edge_depth, support_height]);
}

module support (dynamic_support_depth) {
    union (dynamic_support_depth) {
        translate([0.5, 0, 0]) jagged_edge();
        translate([0, jagged_edge_depth, 0]) support_body(dynamic_support_depth);
        translate([0.5, dynamic_support_depth + jagged_edge_depth, 0]) jagged_edge();
    };
}

