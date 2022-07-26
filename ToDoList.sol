// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract TodoList {
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    function create(string calldata _text) external {
        todos.push(Todo({
            text: _text,
            completed: false
        }));
    }

    function updateText(uint _index, string calldata _text) external {

        //first way - directly updating the text without declaring a variable
        todos[_index].text = _text;

        //another way is to first declaring a variable
        /*
        Todo storage todo = todos[_index]
        todo.text = _text
        */

        //differce is amount of gas they use
        // if you have only one field in struct to update then first way is used
        // if multiple fields in struct to update then second one is better

    }

    function get(uint _index) external view returns(string memory, bool) {
        Todo memory todo = todos[_index];
        return (todo.text, todo.completed);
    }

    function toggleCompleted(uint _index) external {
        todos[_index].completed = !todos[_index].completed;
    }
}