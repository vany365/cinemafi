# @version 0.3.7


event Payment:
    sender: indexed(address)

event Refund:
    sender: indexed(address)

event Finalize:
    sender: indexed(address)


owner: public(address)


@external
def __init__():
    self.owner = msg.sender


@external
def release_funds(sender: address, ) -> bool:
    # TODO: scheduled release of funds to film maker

    log Payment(sender)
    return True


@external
def refund(sender: address) -> bool:
    # TODO: refund to Funder on rage-quit

    log Refund(sender)
    return True


@external
def finalize(sender: address) -> bool:
    # TODO: create new NFT contract

    log Finalize(sender)
    return True
