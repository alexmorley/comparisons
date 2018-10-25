#!/usr/bin/env node
"use strict"

var processors = [
  {name: "comparisons.cor.numpy",
    exe_command: "python3 " + __dirname + "/numpy_corrcoef.py $(arguments)",
      version: 0.1,
      description: "Correlation between X and Y using numpy",
      inputs: [
      {name: "X",default_file_name:"X.csv",optional: false},
      {name: "Y",default_file_name:"Y.csv",optional: false}
      ],
      outputs: [
      {name: "result", default_file_name:"result.csv", optional:false}
      ],
    opts:
    {}
  }
]


if(process.argv[2] == 'spec') {
console.log(JSON.stringify({processors: processors},null,2));
}
