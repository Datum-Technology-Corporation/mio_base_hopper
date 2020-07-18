// 
// ${copyright_header}
// Copyright 2020 Datum Technology Corporation
// 
// Licensed under the Solderpad Hardware License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// 
//     https://solderpad.org/licenses/
// 
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// 


`ifndef __UVMT_${name_uppercase}_HW_RESET_TEST_SV__
`define __UVMT_${name_uppercase}_HW_RESET_TEST_SV__


/**
 * Checks that the reset value specified for registers in the RAL matches what
 * is in the DUT.
 */
class uvmt_${name}_hw_reset_test_c extends uvmt_${name}_reg_base_test_c;
   
   // Sequences
   rand uvme_${name}_reg_hw_reset_vseq_c  hw_reset_vseq;
   
   
   `uvm_component_utils(uvmt_${name}_hw_reset_test_c)
   
   
   constraint defaults_cons {
      soft hw_reset_vseq.single_block_mode == 1;
   }
   
   
   /**
    * Creates hw_reset_vseq.
    */
   extern function new(string name="uvmt_${name}_hw_reset_test", uvm_component parent=null);
   
   /**
    * Runs hw_reset_vseq on vsequencer.
    */
   extern virtual task main_phase(uvm_phase phase);
   
endclass : uvmt_${name}_hw_reset_test_c


function uvmt_${name}_hw_reset_test_c::new(string name="uvmt_${name}_hw_reset_test", uvm_component parent=null);
   
   super.new(name, parent);
   
   hw_reset_vseq = uvme_${name}_reg_hw_reset_vseq_c::type_id::create("hw_reset_vseq");
   
endfunction : new


task uvmt_${name}_hw_reset_test_c::main_phase(uvm_phase phase);
   
   super.main_phase(phase);
   
   `uvm_info("TEST", $sformatf("Starting hw_reset virtual sequence:\n%s", hw_reset_vseq.sprint()), UVM_NONE)
   hw_reset_vseq.single_block = test_cfg.selected_reg_block;
   hw_reset_vseq.start(vsequencer);
   `uvm_info("TEST", "Finished hw_reset virtual sequence", UVM_NONE)
   
endtask : main_phase


`endif // __UVMT_${name_uppercase}_HW_RESET_TEST_SV__
