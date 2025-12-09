COMMENT =		generic lossless compressor

GH_ACCOUNT =		google
GH_PROJECT =		brotli
GH_TAGNAME =		v1.2.0

# upstream version from BROTLI_ABI_* in c/common/version.h
SHARED_LIBS +=  brotlicommon              2.0 # 3.0
SHARED_LIBS +=  brotlidec                 2.0 # 3.0
SHARED_LIBS +=  brotlienc                 2.0 # 3.0

CATEGORIES =		archivers

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c m

MODULES =		devel/cmake

DEBUG_PACKAGES =	${BUILD_PACKAGES}

post-install:
	ln ${PREFIX}/bin/brotli ${PREFIX}/bin/brcat

.include <bsd.port.mk>
