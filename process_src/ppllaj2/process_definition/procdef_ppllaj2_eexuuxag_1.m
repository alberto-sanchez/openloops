
FeynArtsProcess = {F[2, {1}], -F[2, {1}]} -> {-F[3, {1}], F[3, {1}], V[1], V[5]};

SortExternal = True;

OpenLoopsModel = "SM";

CreateTopologiesOptions = {
  ExcludeTopologies -> {Snails, WFCorrectionCTs, TadpoleCTs, Loops[6]},
  Adjacencies -> {3, 4}
};

InsertFieldsOptions = {
  Model -> {"SMQCD", "SMQCDR2"},
  GenericModel -> "Lorentz",
  InsertionLevel -> {Particles},
  Restrictions -> {ExcludeParticles -> {S[2 | 3]}, NoQuarkMixing}
};

UnitaryGauge = True;

ColourCorrelations = False;

SubProcessName = Automatic;

SelectCoupling = MemberQ[{3}, Exponent[#1, eQED]] & ;

SelectInterference = {
  eQED -> {6}
};

SelectTreeDiagrams = False & ;

SelectLoopDiagrams = ContainsFermionLoop[##1] && NFieldPropagators[F[3 | 4], 0, "Type" -> Internal][##1] & ;

SelectCTDiagrams = NFieldPropagators[V[5], 1];

ReplaceOSw = False;

SetParameters = {
  ME -> 0,
  YE -> 0,
  nc -> 3,
  nf -> 6,
  MU -> 0,
  MD -> 0,
  MS -> 0,
  MC -> 0,
  LeadingColour -> 0,
  POLSEL -> 1
};

ChannelMap = {
  {"eexddxag"},
  {"eexbbxag", "MB=0", "YB=0"}
};

Approximation = "";

ForceLoops = Automatic;

NonZeroHels = Null;
