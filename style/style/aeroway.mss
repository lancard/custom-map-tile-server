#airport-line {
  [aeroway = 'runway'] {
    [zoom >= 1] {
      ::fill {
        line-color: @runway-fill;
        line-width: 2;
        [zoom >= 12] { line-width: 4; }
        [zoom >= 13] { line-width: 6; }
        [zoom >= 14] { line-width: 12; }
        [zoom >= 15] { line-width: 18; }
        [zoom >= 16] { line-width: 24; }
      }

      text-name: "[ref]";
      text-size: 14;
      text-fill: blue;
      text-spacing: 750;
      text-clip: false;
      text-placement: line;
      text-face-name: @oblique-fonts;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-repeat-distance: @minor-highway-text-repeat-distance;
    }
  }
  [aeroway = 'taxiway'] {
    [zoom >= 1] {
      ::fill {
        line-color: @taxiway-fill ;
        line-width: 1;
        [zoom >= 13] { line-width: 2; }
        [zoom >= 14] { line-width: 4; }
        [zoom >= 15] { line-width: 6; }
        [zoom >= 16] { line-width: 8; }
      }

      text-name: "[ref]";
      text-size: 10;
      text-fill: #333;
      text-spacing: 750;
      text-clip: false;
      text-placement: line;
      text-face-name: @oblique-fonts;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-repeat-distance: @minor-highway-text-repeat-distance;
    }
  }
}

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
    text-fill: #DBEBC4;
    line-color: #DBEBC4;
  }
}

#aeroway-point {
  text-name: "[name]";
  text-size: 0;
  text-wrap-width: @standard-wrap-width;
  text-line-spacing: @standard-line-spacing-size;
  text-fill: black;
  text-face-name: @standard-font;
  text-halo-radius: @standard-halo-radius;
  text-halo-fill: @standard-halo-fill;
  text-allow-overlap: true;

  marker-allow-overlap: true;

  [zoom <= 7] {
    marker-width: 6;
    marker-height: 6;
    text-size: 0;
    text-dy: 10;
  }
  [zoom = 8] {
    marker-width: 7;
    marker-height: 7;
    text-size: 8;
    text-dy: 10;
  }
  [zoom = 9] {
    marker-width: 8;
    marker-height: 8;
    text-size: 9;
    text-dy: 10;
  }
  [zoom = 10] {
    marker-width: 9;
    marker-height: 9;
    text-size: 10;
    text-dy: 10;
  }
  [zoom = 11] {
    marker-width: 10;
    marker-height: 10;
    text-size: 11;
    text-dy: 10;
  }
  [zoom = 12] {
    marker-width: 11;
    marker-height: 11;
    text-size: 12;
    text-dy: 10;
  }
  [zoom = 13] {
    marker-width: 12;
    marker-height: 12;
    text-size: 13;
    text-dy: 10;
  }


  [vor_type = 'VORDME'] {
    marker-file: url('symbols/aeroway/vordme.svg');
    text-name: [name] + "\n" + [frequency];
  }
  [vor_type = 'TACAN'] {
    marker-file: url('symbols/aeroway/tacan.svg');
    text-name: [name] + "\n" + [frequency];
  }
  [vor_type = 'VORTAC'] {
    marker-file: url('symbols/aeroway/vortac.svg');
    text-name: [name] + "\n" + [frequency];
  }
  [navaid_type = 'NDB'][extra_type = 'NDB'] {
    marker-file: url('symbols/aeroway/ndb.svg');
    text-name: [name] + "\n" + [frequency];
  }
  [navaid_type = 'NDB'][extra_type = 'CUSTOM_FIX'] {
    marker-file: url('symbols/aeroway/fix.svg');
  }
  [navaid_type = 'NDB'][extra_type != 'NDB'][extra_type != 'CUSTOM_FIX'] {
    marker-fill: #DBEBC4;
    text-fill: #DBEBC4;
    [zoom >= 8] {
      marker-width: 7;
      marker-height: 7;
      text-size: 8;
    }
  }
  [navaid_type = 'FIX'][extra_type = 'FIX'] {
    marker-file: url('symbols/aeroway/fix.svg');
  }
  [navaid_type = 'FIX'][extra_type = 'ILS'] {
    text-name: [name] + "\n" + [frequency];
  }
  [navaid_type = 'FIX'][extra_type = 'NEAR_AIRPORT_FIX'] {
    marker-file: url('symbols/aeroway/fix.svg');
    [zoom >= 8] {
      marker-width: 7;
      marker-height: 7;
      text-size: 8;
    }
  }
}

