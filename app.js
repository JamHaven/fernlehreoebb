const gherkin = require('gherkin').default
const gherkin2 = require('gherkin-parser')
const fs = require('fs')

const options = {
  includeSource: true,
  includeGherkinDocument: true,
  includePickles: true,
}
const stream = gherkin.fromPaths(['features/webauszuegeNichtBuchbar.feature']).pipe(process.stdout)


fs.createReadStream('features/webauszuegeNichtBuchbar.feature')
    .pipe(gherkin2())
    .pipe(process.stdout)

