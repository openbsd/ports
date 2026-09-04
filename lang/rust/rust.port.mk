# increment after rust compiler update to trigger updates of
# all compiled rust packages (see arch-defines.mk)
_SYSTEM_VERSION-rust =	26

CATEGORIES +=		lang/rust

# WANTLIB for Rust compiled code
# it should be kept in sync with lang/rust code
# - c/pthread : all syscalls
# - c++abi : unwind
MODRUST_WANTLIB +=	c pthread c++abi

CHECK_LIB_DEPENDS_ARGS +=	-S MODRUST_WANTLIB="${MODRUST_WANTLIB}"

MODRUST_BUILDDEP ?=	Yes
.if ${MODRUST_BUILDDEP:L} == "yes"
BUILD_DEPENDS +=	lang/rust
.endif

# Location of rustc/rustdoc binaries
MODRUST_RUSTC_BIN =	${LOCALBASE}/bin/rustc
MODRUST_RUSTDOC_BIN =	${LOCALBASE}/bin/rustdoc
