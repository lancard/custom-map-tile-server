#aeroway-line {
  [aeroway = 'airway_rnav'] {
    [zoom >= 1] {
      ::casing[bridge = true][zoom >= 14] {
        line-width: 12 + 2*@major-casing-width-z14;
        line-color: blue;
        text-fill: blue;
        line-join: round;
        [zoom >= 15] { line-width: 18 + 2*@major-casing-width-z15; }
        [zoom >= 16] { line-width: 24 + 2*@major-casing-width-z16; }
        [zoom >= 17] { line-width: 24 + 2*@major-casing-width-z17; }
        [zoom >= 18] { line-width: 24 + 2*@major-casing-width-z18; }
      }
      ::fill {
        line-color: blue;
        text-fill: blue;
        line-width: 2;
        [zoom >= 12] { line-width: 4; }
        [zoom >= 13] { line-width: 6; }
        [zoom >= 14] { line-width: 12; }
        [zoom >= 15] { line-width: 18; }
        [zoom >= 16] { line-width: 24; }
      }
    }
  }

  [aeroway = 'airway_conventional'] {
    [zoom >= 1] {
      ::casing[bridge = true][zoom >= 14] {
        line-width: 12 + 2*@major-casing-width-z14;
        line-color: black;
        text-fill: black;
        line-join: round;
        [zoom >= 15] { line-width: 18 + 2*@major-casing-width-z15; }
        [zoom >= 16] { line-width: 24 + 2*@major-casing-width-z16; }
        [zoom >= 17] { line-width: 24 + 2*@major-casing-width-z17; }
        [zoom >= 18] { line-width: 24 + 2*@major-casing-width-z18; }
      }
      ::fill {
        line-color: black;
        text-fill: black;
        line-width: 2;
        [zoom >= 12] { line-width: 4; }
        [zoom >= 13] { line-width: 6; }
        [zoom >= 14] { line-width: 12; }
        [zoom >= 15] { line-width: 18; }
        [zoom >= 16] { line-width: 24; }
      }
    }
  }

  [aeroway = 'airway_vfr'] {
    [zoom >= 1] {
      ::casing[bridge = true][zoom >= 14] {
        line-width: 12 + 2*@major-casing-width-z14;
        line-color: purple;
        text-fill: purple;
        line-join: round;
        [zoom >= 15] { line-width: 18 + 2*@major-casing-width-z15; }
        [zoom >= 16] { line-width: 24 + 2*@major-casing-width-z16; }
        [zoom >= 17] { line-width: 24 + 2*@major-casing-width-z17; }
        [zoom >= 18] { line-width: 24 + 2*@major-casing-width-z18; }
      }
      ::fill {
        line-color: purple;
        text-fill: purple;
        line-width: 2;
        [zoom >= 12] { line-width: 4; }
        [zoom >= 13] { line-width: 6; }
        [zoom >= 14] { line-width: 12; }
        [zoom >= 15] { line-width: 18; }
        [zoom >= 16] { line-width: 24; }
      }
    }
  }

  text-name: "[name]";
  text-size: 20;
  text-dy: 20;
  text-spacing: 300;
  text-clip: false;
  text-placement: line;
  text-face-name: @standard-font;
  text-repeat-distance: 10;
}

#aeroway-point {
  [aeroway = 'vordme'][zoom >= 1], 
  [aeroway = 'tacan'][zoom >= 1],
  [aeroway = 'vortac'][zoom >= 1],
  [aeroway = 'fix'][zoom >= 1] {
    text-name: "[name]";
    text-size: 20;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: black;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-dy: 30;
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
    marker-file: url('symbols/aeroway/vortac.svg');
  }
}
