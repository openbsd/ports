# $OpenBSD: Makefile.inc,v 1.2 2020/03/30 19:24:41 tracey Exp $

BROKEN-sparc64 = 'in gcc-bootsrap build/genmodes -h > tmp-modes.h' 'Illegal instruction (core dumped)'

CONFIG =	xtensa-esp32-elf
CATEGORIES +=	devel
HOMEPAGE =	https://www.espressif.com/en/products/software/esp-sdk/overview

# GPLv3
# For newlib: multiple copyrights, but basically BSD.
#   See: ${PREFIX}/share/doc/newlib
PERMIT_PACKAGE =   Yes

# XXX at least gmkdir gets picked up if present
BUILD_DEPENDS +=	sysutils/coreutils

CONFIGURE_STYLE ?=	gnu
CONFIGURE_ARGS +=	--target=${CONFIG} \
			--program-prefix=xtensa-esp32-elf- \
			--disable-nls \
			--disable-werror \
			--with-bugurl="http://www.espressif.com/"

USE_GMAKE = 		Yes
SEPARATE_BUILD =	Yes
