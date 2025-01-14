// SPDX-License-Identifier: Apache-2.0
// Copyright 2017 Loopring Technology Limited.
pragma solidity ^0.7.0;


/// @title TestTargetContract
/// @author Brecht Devos - <brecht@loopring.org>
contract TestTargetContract
{
    uint public value = 12345;

    event Invoked(address sender);

    function functionDefault(
        uint _value
        )
        external
        returns (uint)
    {
        value = _value;
        emit Invoked(msg.sender);
        return _value;
    }

    function functionPayable(
        uint _value
        )
        external
        payable
    {
        value = _value;
    }

    function functionRevert(
        uint _value
        )
        external
    {
        require(false, "IMMEDIATE_REVERT");
        value = _value;
    }
}
