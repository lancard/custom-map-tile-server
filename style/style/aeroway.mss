#aeroway-line {
  text-name: "[name]";
  text-size: 15;
  text-dy: 7;
  text-fill: blue;
  text-spacing: 300;
  text-clip: false;
  text-placement: line;
  text-face-name: @standard-font;
  text-repeat-distance: 10;

  line-width: 2;
  line-join: round;

  [airway_type = 'RNAV'] {
    text-fill: blue;
    line-color: blue;
  }

  [airway_type = 'CONVENTIONAL'] {
    text-fill: black;
    line-color: black;
  }

  [airway_type = 'VFR'] {
    text-fill: purple;
    line-color: purple;
  }
}

#aeroway-point {
  text-name: "[name]";
  text-size: 15;
  text-wrap-width: @standard-wrap-width;
  text-line-spacing: @standard-line-spacing-size;
  text-fill: black;
  text-face-name: @standard-font;
  text-halo-radius: @standard-halo-radius;
  text-halo-fill: @standard-halo-fill;
  text-dy: 10;
  text-allow-overlap: true;

  marker-allow-overlap: true;

  [vor_type = 'VORDME'] {
    marker-file: url('symbols/aeroway/vordme.svg');
  }
  [vor_type = 'TACAN'] {
    marker-file: url('symbols/aeroway/tacan.svg');
  }
  [vor_type = 'VORTAC'] {
    marker-file: url('symbols/aeroway/vortac.svg');
  }
  [vor_type = 'FIX'] {
    marker-file: url('symbols/aeroway/fix.svg');
  }
  [vor_type = 'NDB'] {
    marker-file: url('symbols/aeroway/ndb.svg');
  }
}
