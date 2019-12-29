meta:
  id: data0
  endian: le
seq:
  - id: entries
    type: entry
    repeat: expr
    repeat-expr: entry_count
types:
  entry:
    seq:
      - id: offset
        type: u8
      - id: decompressed_size
        type: u8
      - id: compressed_size
        type: u8
      - id: is_compressed
        type: u8
instances:
  entry_count:
    value: _io.size / 0x20
