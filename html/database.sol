// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;


contract database{
    struct Data{
        uint imprintnumber;
    }

    Data[] public Datas;

    function AddData(uint _imprintnumber) public {
        Datas.push(Data(_imprintnumber));
    }

    bool public isValid = false;
    function Compare(uint _imprintnum) public {
        
        for(uint i=0;i<Datas.length;i++){
            if(_imprintnum == Datas[i].imprintnumber){
                isValid = true;                 
            }
        }
    }
}