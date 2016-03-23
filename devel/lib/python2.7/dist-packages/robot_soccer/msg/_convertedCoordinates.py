# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robot_soccer/convertedCoordinates.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class convertedCoordinates(genpy.Message):
  _md5sum = "33e0725743485cfbb7c339da37d8180a"
  _type = "robot_soccer/convertedCoordinates"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """Header header
float64 home1_x
float64 home1_y
float64 home1_theta
float64 home2_x
float64 home2_y
float64 home2_theta
float64 away1_x
float64 away1_y
float64 away1_theta
float64 away2_x
float64 away2_y
float64 away2_theta
float64 ball_x
float64 ball_y

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

"""
  __slots__ = ['header','home1_x','home1_y','home1_theta','home2_x','home2_y','home2_theta','away1_x','away1_y','away1_theta','away2_x','away2_y','away2_theta','ball_x','ball_y']
  _slot_types = ['std_msgs/Header','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,home1_x,home1_y,home1_theta,home2_x,home2_y,home2_theta,away1_x,away1_y,away1_theta,away2_x,away2_y,away2_theta,ball_x,ball_y

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(convertedCoordinates, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.home1_x is None:
        self.home1_x = 0.
      if self.home1_y is None:
        self.home1_y = 0.
      if self.home1_theta is None:
        self.home1_theta = 0.
      if self.home2_x is None:
        self.home2_x = 0.
      if self.home2_y is None:
        self.home2_y = 0.
      if self.home2_theta is None:
        self.home2_theta = 0.
      if self.away1_x is None:
        self.away1_x = 0.
      if self.away1_y is None:
        self.away1_y = 0.
      if self.away1_theta is None:
        self.away1_theta = 0.
      if self.away2_x is None:
        self.away2_x = 0.
      if self.away2_y is None:
        self.away2_y = 0.
      if self.away2_theta is None:
        self.away2_theta = 0.
      if self.ball_x is None:
        self.ball_x = 0.
      if self.ball_y is None:
        self.ball_y = 0.
    else:
      self.header = std_msgs.msg.Header()
      self.home1_x = 0.
      self.home1_y = 0.
      self.home1_theta = 0.
      self.home2_x = 0.
      self.home2_y = 0.
      self.home2_theta = 0.
      self.away1_x = 0.
      self.away1_y = 0.
      self.away1_theta = 0.
      self.away2_x = 0.
      self.away2_y = 0.
      self.away2_theta = 0.
      self.ball_x = 0.
      self.ball_y = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_struct_3I.pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_14d.pack(_x.home1_x, _x.home1_y, _x.home1_theta, _x.home2_x, _x.home2_y, _x.home2_theta, _x.away1_x, _x.away1_y, _x.away1_theta, _x.away2_x, _x.away2_y, _x.away2_theta, _x.ball_x, _x.ball_y))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 112
      (_x.home1_x, _x.home1_y, _x.home1_theta, _x.home2_x, _x.home2_y, _x.home2_theta, _x.away1_x, _x.away1_y, _x.away1_theta, _x.away2_x, _x.away2_y, _x.away2_theta, _x.ball_x, _x.ball_y,) = _struct_14d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_3I.pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_14d.pack(_x.home1_x, _x.home1_y, _x.home1_theta, _x.home2_x, _x.home2_y, _x.home2_theta, _x.away1_x, _x.away1_y, _x.away1_theta, _x.away2_x, _x.away2_y, _x.away2_theta, _x.ball_x, _x.ball_y))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 112
      (_x.home1_x, _x.home1_y, _x.home1_theta, _x.home2_x, _x.home2_y, _x.home2_theta, _x.away1_x, _x.away1_y, _x.away1_theta, _x.away2_x, _x.away2_y, _x.away2_theta, _x.ball_x, _x.ball_y,) = _struct_14d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3I = struct.Struct("<3I")
_struct_14d = struct.Struct("<14d")
