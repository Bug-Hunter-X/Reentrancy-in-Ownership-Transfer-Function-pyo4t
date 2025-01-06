```javascript
function transferOwnership(newOwner) {
  require(msg.sender == owner, "Only the owner can transfer ownership");
  address oldOwner = owner;
  owner = newOwner;
  emit OwnershipTransferred(oldOwner, newOwner); // Emit event after state change
}
```
This improved version uses the Checks-Effects-Interactions pattern.  First, it checks if the caller is the owner. Then, it updates the state variable `owner`. Finally, it emits an event to signal that the ownership has been transferred.