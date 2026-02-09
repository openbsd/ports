BROKEN-aarch64 = looks for sys/auxv.h

COMMENT =	library for reading MAME's CHDv1-v5 formats

V =		1.0pl20251226
DISTNAME =	libchdr-$V

GH_ACCOUNT =	rtissera
GH_PROJECT =	libchdr
GH_COMMIT =	07a7dad23378b001f4ab174ef51bd6553f883edd

SHARED_LIBS +=	chdr	2.0 # 0.1

CATEGORIES =	emulators devel games

HOMEPAGE =	https://github.com/rtissera/libchdr

CONFIGURE_ARGS +=	-DWITH_SYSTEM_ZLIB=ON

# BSD 3-Clause
# Public Domain (lzma)
# zlib (zlib)
PERMIT_PACKAGE =	Yes

WANTLIB += pthread z

MODULES =		devel/cmake

.include <bsd.port.mk>
