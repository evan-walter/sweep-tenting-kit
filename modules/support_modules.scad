include <global_variables.scad>

module support_body (support_depth) {
    cube([support_width, support_depth, support_height]);
}

module jagged_edge () {
    cube([bar_width - jagged_edge_offset, jagged_edge_depth, support_height]);
}

module support (support_depth) {
    union (support_depth) {
        translate([0.5, 0, 0]) jagged_edge();
        translate([0, jagged_edge_depth, 0]) support_body(support_depth);
        translate([0.5, support_depth + jagged_edge_depth, 0]) jagged_edge();
    };
}

