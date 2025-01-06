```javascript
function transferOwnership(newOwner) {
  require(msg.sender == owner, "Only the owner can transfer ownership");
  owner = newOwner;
}
```
This code snippet has a potential reentrancy vulnerability.  If the `newOwner` is a malicious contract, it could call back into the `transferOwnership` function before the state variable `owner` is updated, allowing the malicious contract to retain ownership.