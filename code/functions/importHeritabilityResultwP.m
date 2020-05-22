function heritabilityACE = importHeritabilityResultwP(filename, dataLines)
%IMPORTFILE Import data from a text file
%  HERITABILITYACTENOOUTLIERSWSATPVALSALLEDGESTWINEDGESRANDOM500IF =
%  IMPORTFILE(FILENAME) reads data from text file FILENAME for the
%  default selection.  Returns the data as a table.
%
%  HERITABILITYACTENOOUTLIERSWSATPVALSALLEDGESTWINEDGESRANDOM500IF =
%  IMPORTFILE(FILE, DATALINES) reads data for the specified row
%  interval(s) of text file FILENAME. Specify DATALINES as a positive
%  scalar integer or a N-by-2 array of positive scalar integers for
%  dis-contiguous row intervals.
%
%  Example:
%  heritabilityACTEnoOUTLIERSwSATpValsallEdgestwinEdgesrandom500iF = importfile('/Users/aurinaa/Google_drive/Genetics_connectome/HumanHubs_figures/data/heritability/heritabilityACTEnoOUTLIERS_wSATpVals_allEdges_twinEdges_random500_iFOD2_FA_strength10.mat-1.txt', [2, Inf]);
%
%  See also READTABLE.
%
% Auto-generated by MATLAB on 04-May-2020 10:14:22

%% Input handling

% If dataLines is not specified, define defaults
if nargin < 2
    dataLines = [2, Inf];
end

%% Setup the Import Options and import the data
opts = delimitedTextImportOptions('NumVariables', 6);

% Specify range and delimiter
opts.DataLines = dataLines;
opts.Delimiter = ',';

% Specify column names and types
opts.VariableNames = ['heritabilityA', 'heritabilityC', 'heritabilityT', 'heritabilityE', 'heritabilityS', 'heritabilitySp'];
opts.VariableTypes = ['double', 'double', 'double', 'double', 'double', 'double'];

% Specify file level properties
opts.ExtraColumnsRule = 'ignore';
opts.EmptyLineRule = 'read';

% Import the data
heritabilityACE = readtable(filename, opts);

end