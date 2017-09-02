# $OpenBSD: Makefile,v 1.17 2017/09/02 21:43:45 jeremy Exp $

BROKEN-i386=	runs tests during build; these segfault

# Some assembly required
ONLY_FOR_ARCHS =i386 amd64

COMMENT =	language agnostic asynchronous web server

V =		1.11.0
DISTNAME =	mongrel2-v${V}
PKGNAME =	mongrel2-${V}
CATEGORIES =	www

HOMEPAGE =	http://mongrel2.org/

# BSD, 3 clause
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://github.com/mongrel2/mongrel2/releases/download/v${V}/
EXTRACT_SUFX =		.tar.bz2
# strange charset in filenames; does not use extended headers
TAR =			${LOCALBASE}/bin/gtar

WANTLIB += c pthread sqlite3 zmq

BUILD_DEPENDS =		archivers/gtar
LIB_DEPENDS =		databases/sqlite3 \
			net/zeromq>=4.0.4

USE_GMAKE =		Yes
MAKE_ARGS =		OPTFLAGS="-I${LOCALBASE}/include" \
			OPTLIBS="-L${LOCALBASE}/lib" \
			LD="${CC}"
ALL_TARGET =		openbsd filters config_modules ${MAKE_ARGS}

EXAMPLE_DIR =		${PREFIX}/share/examples/mongrel2

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	tar -cf - -C ${WRKSRC}/examples . | tar -xf - -C ${EXAMPLE_DIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${EXAMPLE_DIR}

TEST_TARGET	=	tests ${MAKE_ARGS}

.include <bsd.port.mk>
