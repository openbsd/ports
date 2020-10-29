# $OpenBSD: Makefile.inc,v 1.3 2020/10/29 14:10:51 tracey Exp $

CONFIG =	xtensa-esp32-elf
CATEGORIES +=	devel
HOMEPAGE =	https://www.espressif.com/en/products/software/esp-sdk/overview

# GPLv3
# For newlib: multiple copyrights, but basically BSD.
#   See: ${PREFIX}/share/doc/newlib
PERMIT_PACKAGE =   Yes

# permits build on sparc64
COMPILER =	base-clang ports-clang

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
