//========================================================================
// PairTripleDetector
//========================================================================

module PairTripleDetector
(
  input  wire in0,
  input  wire in1,
  input  wire in2,
  output wire out
);

  // '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
  // Discussion Section Task
  // '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
  // Implement a pair/triple detector using explicit gate-level modeling.

  // Intermediate output wires
  wire x;
  wire w;
  wire y;

  // Combinational Logic
  or (   w, in0, in1 );
  and(   x, in0, in1 );
  and(   y,   w, in2 );
  or ( out,   y,   x );

endmodule
