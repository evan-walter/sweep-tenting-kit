include <../global_variables.scad>

module bar() {
    cube([BAR_WIDTH, BAR_DEPTH, FACE_HEIGHT]);
}

module bars() {
    for (i = [0 : BAR_DEPTH + BAR_GAP : 9]) {
        translate([0, i, 0]) bar();
        echo(i);
    }
}

