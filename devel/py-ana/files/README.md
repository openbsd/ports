# ANA

ANA is a project to provide easy distributed data storage for stuff.
It provides every object with a UUID and, when pickled, will first serialize the object's state to a central location and then "pickle" the object into just its UUID.
This is really handy when you have to distribute objects in some distributed system, and you'd rather not pickle the whole object every time you need to send it.

ANA violates some of pickle's assumptions.
Users of pickle often have an implicit assumption that the objects they unpickle will be different (identity-wise) than the objects that they pickle.
This is not the case with ANA; in fact, it has an object cache specifically to avoid this.
Furthermore, depending on the mode of operation, ANA might store the objects centrally, by UUID, where it will be accessed by other instances of ANA.
Because of these things, the objects serialized with ANA should be immutable, if you know what's good for you.

## Usage

To use ANA, simply subclass `ana.Storable` and implement `_ana_getstate` and `_ana_setstate`.
These should function identically to how you would normally implement `__getstate__` and `__setstate__` for pickle.

Here's an example:

```python
import ana
import pickle

class A(ana.Storable):
	def __init__(self, n):
		self.n = n
		l.debug("Initialized %s", self)
		
	def __repr__(self):
		return "<A %d>" % self.n
		
	def _ana_getstate(self):
		return self.n
		
	def _ana_setstate(self, s):
		self.n = s

# create an instance
a = A(10)

# First, this instance will be pickled more or less normally.
# For example, the following will actually contain the state,
# and deserializing it will create a new object.
a_pickled = pickle.dumps(a)
b = pickle.loads(a_pickled)
assert b is not a

# Now, let's try assigning this guy a UUID
a.make_uuid()

# Now, when the object is unpickled, the identity is preserved.
a_pickled = pickle.dumps(a)
b = pickle.loads(a_pickled)
assert b is a

# There are also functions that provide easy storing and loading
# in advanced situations. These these require an actual storage
# datalayer (see below) other than SimpleDataLayer.
a_uuid = a.uuid
a.ana_store()
b = A.ana_load(a_uuid) # note that this is a class method
assert b is a
```

Have fun!

## JSON

ANA has the capability to serialize to a literal format such as JSON, out of the box.
By default, it does it's best to serialize any collections in what's returned by `_ana_getstate`, which is often enough.
If something more complex is needed, a `Storable` can overload `_ana_getliteral`, which is then called instead of `_ana_getstate`.

Since the list of already-serialized UUIDs may be client-dependent (for an ANA instance that serves multiple clients), this functionality receives, and updates, a set of which UUIDs have already been serialized.
Furthermore, it assigns a UUID to every ANA-serializable object.

With the example `A` class, we would do the following:

```python
a = A(10)

# start with an empty set
serialized = set()

# serialize to literal
a_literal = a.to_literal(serialized)

# the object is marked as serialized
assert a.ana_uuid in serialized

# the dictionary has a list of objects and the root node
assert a_literal == {
	'objects': {
		a.ana_uuid: { 'class': a.__class__.__name__, 'object': a._get_state() }
	},
	'value': { 'ana_uuid': a.ana_uuid }
}

# in this case, the literal value would be, with an example UUID:
assert a.ana_uuid == "142be0d1-e3b4-4d7e-a2ce-9842285f3b18" # let's pretend
assert a_literal == {
	'objects': {
		'142be0d1-e3b4-4d7e-a2ce-9842285f3b18': {
			'class': 'A',
			'object': 10
		}
	},
	'value': { 'ana_uuid': '142be0d1-e3b4-4d7e-a2ce-9842285f3b18' }
}

# if you serialize this again, with the same serialized set, ANA is
# smart enough to avoid re-serializing objects
assert a.to_literal(serialized) == {
	'objects': { }
	'value': { 'ana_uuid': '142be0d1-e3b4-4d7e-a2ce-9842285f3b18' }
}

# furthermore, object trees are properly handled
b = A(20)
a.n = b
serialized = set()

assert b.ana_uuid == "fbda537c-38f0-4db7-b5f2-3e3d8afe7c1f" # some more pretending
assert a.to_literal(serialized) == {
	'objects': {
		'142be0d1-e3b4-4d7e-a2ce-9842285f3b18': {
			'class': 'A',
			'object': { 'ana_uuid': 'fbda537c-38f0-4db7-b5f2-3e3d8afe7c1f'
		},
		'fbda537c-38f0-4db7-b5f2-3e3d8afe7c1f': {
			'class': 'A',
			'object': 20
		}
	}
	'value': { 'ana_uuid': '142be0d1-e3b4-4d7e-a2ce-9842285f3b18' }
}
```

This can then be serialized out to JSON with something like `json.dumps(a_literal)`!

## Storage Backends

There are several storage backends for ANA:

| Backend | Description |
|---------|-------------|
| Simple (default) | This backend is basically a pickle passthrough, and serialization just works normally through pickle. |
| Dict | With this backend, the pickled states are held in a dict. The dict can be a distributed storage structure (i.e., redis or something). This can be initialized as: ana.set_dl(ana.DictDataLayer(the_dict={}))` |
| Directory | With this backend, states are pickled into a directory. This can be created by passing the `pickle_dir` option to ana.set_dl(), like so: `ana.set_dl(ana.DirDataLayer("/dev/shm/ana_storage"))` |
| MongoDB | With this backend, states are pickled into mongodb. This can be created by passing the `mongo_args`, `mongo_db`, and `mongo_collection` options to `ana.set_dl(ana.MongoDataLayer(mongo_args, mongo_db=mongo_db, mongo_collection=mongo_collection))`. These are passed into pymongo, like so: `pymongo.MongoClient(*mongo_args)[mongo_db][mongo_collection]` |
