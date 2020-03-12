# $OpenBSD: Makefile.inc,v 1.1.1.1 2020/03/12 15:05:19 tracey Exp $

CONFIG =	xtensa-lx106-elf
CATEGORIES +=	devel

# GPLv3
# For newlib: multiple copyrights, but basically BSD.
#   See: ${PREFIX}/share/doc/newlib
# For lx106-hal MIT
PERMIT_PACKAGE =	Yes

# XXX at least gmkdir gets picked up if present
BUILD_DEPENDS +=	sysutils/coreutils

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--target=${CONFIG}
