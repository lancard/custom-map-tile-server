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
    text-fill: black;
    line-color: black;
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
  [aeroway = 'vordme'][zoom >= 1], 
  [aeroway = 'tacan'][zoom >= 1],
  [aeroway = 'vortac'][zoom >= 1],
  [aeroway = 'fix'][zoom >= 1] {
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
  }

  [aeroway = 'vordme'][zoom >= 1] {
    marker-allow-overlap: true;
    marker-file: url('symbols/aeroway/vordme.svg');
  }
  [aeroway = 'tacan'][zoom >= 1] {
    marker-allow-overlap: true;
    marker-file: url('symbols/aeroway/tacan.svg');
  }
  [aeroway = 'vortac'][zoom >= 1] {
    marker-allow-overlap: true;
    marker-file: url('symbols/aeroway/vortac.svg');
  }
  [aeroway = 'fix'][zoom >= 1] {
    marker-allow-overlap: true;
    marker-file: url('symbols/aeroway/fix.svg');
  }
}
