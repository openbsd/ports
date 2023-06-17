BROKEN-aarch64 = looks for sys/auxv.h

COMMENT =	library for reading MAME's CHDv1-v5 formats

V =		1.0pl20230220
DISTNAME =	libchdr-$V

GH_ACCOUNT =	rtissera
GH_PROJECT =	libchdr
GH_COMMIT =	fec8ab94212cc65d9d9a62cb3da924f5830c04b0

SHARED_LIBS +=	chdr	1.0 # 0.1

CATEGORIES =	emulators devel games

HOMEPAGE =	https://github.com/rtissera/libchdr

CONFIGURE_ARGS +=	-DWITH_SYSTEM_ZLIB=ON

# BSD 3-Clause
# Public Domain (lzma)
# zlib (zlib)
PERMIT_PACKAGE =	Yes

WANTLIB +=	z

MODULES =		devel/cmake

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

.include <bsd.port.mk>
