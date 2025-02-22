COMMENT =		generic lossless compressor

GH_ACCOUNT =		google
GH_PROJECT =		brotli
GH_TAGNAME =		v1.0.9
REVISION =		1

SHARED_LIBS +=  brotlicommon              1.2 # 1.0.9
SHARED_LIBS +=  brotlidec                 1.1 # 1.0.9
SHARED_LIBS +=  brotlienc                 1.0 # 1.0.9

CATEGORIES =		archivers

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c m

CONFIGURE_STYLE =	autoreconf
AUTORECONF =		./bootstrap
AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

DEBUG_PACKAGES =	${BUILD_PACKAGES}

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/brotli.1 ${PREFIX}/man/man1

do-test:
	-ln -s .. ${WRKSRC}/tests/bin
	-ln -s . ${WRKSRC}/tests/tests
	mkdir -p ${WRKSRC}/tests/bin/tmp
	cd ${WRKSRC}/tests; ${MAKE_PROGRAM}

.include <bsd.port.mk>
