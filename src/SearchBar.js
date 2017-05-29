import React, { Component } from 'react';
import { Input } from './Bootstrap';
import Dropdown from './Dropdown';

class SearchBar extends Component {
  constructor(props) {
    super(props);
    this.state = {
      dropdownVisible: false
    };
  }

  render() {
    return (
      <div>
        <Input
          placeholder={this.props.placeholder}
          updateState={this.props.updateState}
          value={this.props.state}
          width={this.props.width}
          height={this.props.height}
          style={this.generateInputStyle()}
          onChange={this.onChange.bind(this)}
        />
        <Dropdown
          data={this.data}
          width={this.props.width}
          visible={this.state.dropdownVisible}
        />
      </div>
    );
  }

  onChange(value) {
    if (value === '') {
      this.setState({ dropdownVisible: false });
    } else this.setState({ dropdownVisible: true });
  }

  generateInputStyle() {
    let style = { margin: '0 0 -1px 0', borderRadius: '4px' };
    if (this.state.dropdownVisible) {
      style.borderRadius = '4px 4px 0 0';
    }

    return style;
  }

  data = ['label1', 'label2', 'label3'];
}

export default SearchBar;