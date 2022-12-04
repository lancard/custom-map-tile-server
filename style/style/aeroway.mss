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

  [aeroway = 'airway_rnav'] {
    text-fill: blue;
    line-color: blue;
  }

  [aeroway = 'airway_conventional'] {
    text-fill: black;
    line-color: black;
  }

  [aeroway = 'airway_vfr'] {
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

  [aeroway = 'vordme'] {
    marker-file: url('symbols/aeroway/vordme.svg');
    text-name: "[name]\nASDFASF";
  }
  [aeroway = 'tacan'] {
    marker-file: url('symbols/aeroway/tacan.svg');
    text-name: "[name]\nASDFASF";
  }
  [aeroway = 'vortac'] {
    marker-file: url('symbols/aeroway/vortac.svg');
    text-name: "[name]\nASDFASF";
  }
  [aeroway = 'fix'] {
    marker-file: url('symbols/aeroway/fix.svg');
  }
  [aeroway = 'ndb'] {
    marker-file: url('symbols/aeroway/ndb.svg');
  }
}
