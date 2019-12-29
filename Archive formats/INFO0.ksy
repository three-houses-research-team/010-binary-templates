meta:
  id: info0
  endian: le
seq:
  - id: entries
    type: entry
    repeat: expr
    repeat-expr: entry_count
types:
  entry:
    seq:
      - id: entry_id
        type: u8
      - id: decompressed_size
        type: u8
      - id: compressed_size
        type: u8
      - id: is_compressed
        type: u8
      - id: filename
        type: str
        encoding: utf8
        size: 0x100
instances:
  entry_count:
    value: _io.size / 0x120
