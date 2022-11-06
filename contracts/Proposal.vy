# @version 0.3.7


event Propose:
    owner: indexed(address)

event Fund:
    sender: indexed(address)

event Refund:
    sender: indexed(address)

event Finalize:
    owner: indexed(address)

owner: public(address)
token: public(address)
production: public(address)


@external
def __init__():
    self.owner = msg.sender


@external
def create_proposal(sender: address, ) -> bool:
    # TODO: crete ERC-20 parameterized token

    log Propose(owner)
    return True


@external
def fund(sender: address: ) -> bool:
    contract = '0x732E8B414aD2a9C6a513ea14Dc72B2EF20c52c39'

    contract.mint(sender=sender)

    log Fund(sender)
    return True


@external
def refund(sender: address) -> bool:

    log Refund(sender)
    return True


@external
def finalize(sender: address) -> bool:

    log Finalize(sender)
    return True
