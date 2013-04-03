# $OpenBSD: Makefile,v 1.10 2013/04/03 11:23:31 sthen Exp $

# Some assembly required
ONLY_FOR_ARCHS =i386 amd64
SHARED_ONLY =	Yes

COMMENT =	language agnostic asynchronous web server

DISTNAME =	mongrel2-1.8.0
REVISION =	0
CATEGORIES =	www

HOMEPAGE =	http://mongrel2.org/

# BSD, 3 clause
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://distfiles.nl/
# strange charset in filenames; does not use extended headers
TAR =			${LOCALBASE}/bin/gtar

WANTLIB += c pthread sqlite3 zmq

BUILD_DEPENDS =		archivers/gtar
LIB_DEPENDS =		net/zeromq>=3.2.0

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
