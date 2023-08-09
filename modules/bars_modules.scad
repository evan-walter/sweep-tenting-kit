module face() {
    cube([face_width, face_depth, 0.6]);
}

module bars() {
    
}

module face_bars() {
    face() - bars();
}

