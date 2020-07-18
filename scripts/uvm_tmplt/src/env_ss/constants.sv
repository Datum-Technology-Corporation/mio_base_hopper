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


`ifndef __UVME_${name_uppercase}_CONSTANTS_SV__
`define __UVME_${name_uppercase}_CONSTANTS_SV__


const int unsigned      uvme_${name}_reset_default_clk_period = 10_000; // 10ns
const int unsigned      uvme_${name}_${ral_agent_type}_default_clk_period = 10_000; // 10ns
const longint unsigned  uvme_${name}_rall_default_base_address = 64'h0000_0000_0000_0000;
const int unsigned      uvme_${name}_ral_reg_n_bytes  = 4; // bytes (B)


`endif // __UVME_${name_uppercase}_CONSTANTS_SV__
