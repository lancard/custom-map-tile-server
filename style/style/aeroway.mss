#aeroway-line {
  [aeroway = 'airway_rnav'] {
    [zoom >= 1] {
      ::casing[bridge = true][zoom >= 14] {
        line-width: 12 + 2*@major-casing-width-z14;
        line-color: blue;
        line-join: round;
        [zoom >= 15] { line-width: 18 + 2*@major-casing-width-z15; }
        [zoom >= 16] { line-width: 24 + 2*@major-casing-width-z16; }
        [zoom >= 17] { line-width: 24 + 2*@major-casing-width-z17; }
        [zoom >= 18] { line-width: 24 + 2*@major-casing-width-z18; }
      }
      ::fill {
        line-color: blue;
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
        line-join: round;
        [zoom >= 15] { line-width: 18 + 2*@major-casing-width-z15; }
        [zoom >= 16] { line-width: 24 + 2*@major-casing-width-z16; }
        [zoom >= 17] { line-width: 24 + 2*@major-casing-width-z17; }
        [zoom >= 18] { line-width: 24 + 2*@major-casing-width-z18; }
      }
      ::fill {
        line-color: black;
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
        line-join: round;
        [zoom >= 15] { line-width: 18 + 2*@major-casing-width-z15; }
        [zoom >= 16] { line-width: 24 + 2*@major-casing-width-z16; }
        [zoom >= 17] { line-width: 24 + 2*@major-casing-width-z17; }
        [zoom >= 18] { line-width: 24 + 2*@major-casing-width-z18; }
      }
      ::fill {
        line-color: purple;
        line-width: 2;
        [zoom >= 12] { line-width: 4; }
        [zoom >= 13] { line-width: 6; }
        [zoom >= 14] { line-width: 12; }
        [zoom >= 15] { line-width: 18; }
        [zoom >= 16] { line-width: 24; }
      }
    }
  }
}

