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


`ifndef __UVME_${name_uppercase}_REG_IGNORE_ALL_LIST_SV__
`define __UVME_${name_uppercase}_REG_IGNORE_ALL_LIST_SV__


string  ignore_list[$] = '{
   // TODO Add register blocks to ${name_normal_case} ignore list for all RAL automated tests
   //      Ex: "block_name.reg_name", // One register at a time
   //      Ex: "block_name.*", // One block at a time
};


`endif // __UVME_${tb_name_uppercase}_REG_IGNORE_ALL_LIST_SV__
