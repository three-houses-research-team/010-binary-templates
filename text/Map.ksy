meta:
  id: map
  endian: le
seq:
  - id: entry_count
    type: u4
  - id: entries
    type: entry
    repeat: expr
    repeat-expr: entry_count
types:
  entry:
    seq:
      - id: offset
        type: u4
      - id: size
        type: u4
    instances:
      body:
        pos: offset
        size: size+1
        type: str
        encoding: utf8