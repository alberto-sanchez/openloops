
FeynArtsProcess = {F[2, {1}], -F[2, {1}]} -> {-F[3, {3}], F[3, {3}], S[1]};

SortExternal = True;

OpenLoopsModel = "SM_yuksel";

CreateTopologiesOptions = {
  ExcludeTopologies -> {Snails, WFCorrectionCTs, TadpoleCTs},
  Adjacencies -> {3, 4}
};

InsertFieldsOptions = {
  Model -> {"SMQCD", "SMQCDR2"},
  GenericModel -> "Lorentz",
  InsertionLevel -> {Particles},
  Restrictions -> {ExcludeParticles -> {S[2 | 3]}, NoQuarkMixing}
};

UnitaryGauge = True;

ColourCorrelations = Automatic;

SubProcessName = Automatic;

SelectCoupling = MemberQ[{3}, Exponent[#1, eQED]] & ;

SelectInterference = {
  eQED -> {6}
};

SelectTreeDiagrams = True & ;

SelectLoopDiagrams = True & ;

SelectCTDiagrams = True & ;

ReplaceOSw = False;

SetParameters = {
  ME -> 0,
  YE -> 0,
  YukT -> 1,
  CKMORDER -> 0,
  nc -> 3,
  nf -> 6,
  MU -> 0,
  MD -> 0,
  MS -> 0,
  MC -> 0,
  YU -> 0,
  YD -> 0,
  YS -> 0,
  YC -> 0,
  LeadingColour -> 0,
  POLSEL -> 1
};

ChannelMap = {};

Approximation = "";

ForceLoops = Automatic;

NonZeroHels = Null;
