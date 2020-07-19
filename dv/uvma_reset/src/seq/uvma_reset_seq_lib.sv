// 
// Copyright 2020 Datum Technology Corporation
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
// 
// Licensed under the Solderpad Hardware License v 2.1 (the �License�); you may
// not use this file except in compliance with the License, or, at your option,
// the Apache License version 2.0. You may obtain a copy of the License at
// 
//     https://solderpad.org/licenses/SHL-2.1/
// 
// Unless required by applicable law or agreed to in writing, any work
// distributed under the License is distributed on an �AS IS� BASIS, WITHOUT
// WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
// License for the specific language governing permissions and limitations
// under the License.
// 


`ifndef __UVMA_RESET_SEQ_LIB_SV__
`define __UVMA_RESET_SEQ_LIB_SV__


`include "uvma_reset_base_seq.sv"
`include "uvma_reset_pulse_seq.sv"


/**
 * Object holding sequence library for Reset agent.
 */
class uvma_reset_seq_lib_c extends uvm_sequence_library#(
   .REQ(uvma_reset_seq_item_c),
   .RSP(uvma_reset_seq_item_c)
);
   
   `uvm_object_utils          (uvma_reset_seq_lib_c)
   `uvm_sequence_library_utils(uvma_reset_seq_lib_c)
   
   
   /**
    * Initializes sequence library
    */
   extern function new(string name="uvma_reset_seq_lib");
   
endclass : uvma_reset_seq_lib_c


function uvma_reset_seq_lib_c::new(string name="uvma_reset_seq_lib");
   
   super.new(name);
   init_sequence_library();
   
   // TODO Add sequences to uvma_reset_seq_lib_c
   //      Ex: add_sequence(uvma_reset_abc_seq_c::get_type());
   
endfunction : new


`endif // __UVMA_RESET_SEQ_LIB_SV__
