meta:
  id: text_events
  endian: le
seq:
  - id: header
    type: header
  - id: events
    type: event
    repeat: expr
    repeat-expr: header.event_count
types:
  header:
    seq:
      - id: event_count
        type: u4
      - id: unk
        size: 0xC
  event:
    seq:
      - id: event_type
        type: u4
      - id: portrait_id
        type: u4
      - id: line_id
        type: u4
      - id: animation_id
        type: u4
      - id: emotion_id
        type: u4
      - id: voice_line_id
        type: u4
      - id: unk
        size: 0x18
