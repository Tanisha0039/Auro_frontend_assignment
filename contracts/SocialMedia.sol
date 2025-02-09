// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SocialMedia {
    struct UserProfile {
        string username;
        string bio;
        address userAddress;
    }

    struct Post {
        string content;
        address author;
        uint256 timestamp;
    }

    mapping(address => UserProfile) public profiles;
    mapping(uint256 => Post) public posts;
    uint256 public postCount;

    function createProfile(string memory _username, string memory _bio) public {
        profiles[msg.sender] = UserProfile(_username, _bio, msg.sender);
    }

    function getProfile(address _user) public view returns (UserProfile memory) {
        return profiles[_user];
    }

    function createPost(string memory _content) public {
        posts[postCount] = Post(_content, msg.sender, block.timestamp);
        postCount++;
    }
} 