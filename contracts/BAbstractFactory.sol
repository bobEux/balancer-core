pragma solidity 0.5.12;

import "./BPool.sol";

interface BAbstractFactory {
    event LOG_NEW_POOL(
        address indexed caller,
        address indexed pool
    );

    event LOG_BLABS(
        address indexed caller,
        address indexed blabs
    );

    function isBPool(address b)
        external view returns (bool);

    function newBPool()
        external
        returns (BPool);

    function getBLabs()
        external view
        returns (address);

    function setBLabs(address b)
        external;

    function collect(BPool pool)
        external;
}
