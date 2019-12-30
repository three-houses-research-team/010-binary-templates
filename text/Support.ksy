meta:
  id: support
  endian: le
seq:
  - id: header
    type: header
  - id: entries
    type: entry
    repeat: expr
    repeat-expr: header.ptr_count
types:
  header:
    seq:
      - id: unk0
        type: u4
      - id: unk1
        type: u4
      - id: ptr_section_offset
        type: u4
      - id: ptr_section_size
        type: u4
      - id: ptr_count
        type: u4
      - id: padding
        size: 0xC
  entry:
    seq:
      - id: offset
        type: u4
    instances:
      body:
        pos: _root.header.ptr_section_offset + _root.header.ptr_section_size + offset
        type: strz
        encoding: utf8
