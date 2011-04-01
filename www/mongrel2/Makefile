# $OpenBSD: Makefile,v 1.1.1.1 2011/04/01 22:28:02 jeremy Exp $

# Some assembly required
ONLY_FOR_ARCH =	i386 amd64

COMMENT =	language agnostic asynchronous web server

DISTNAME =	mongrel2-1.5
CATEGORIES =	www

HOMEPAGE =	http://mongrel2.org/

# BSD, 3 clause
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://mongrel2.org/static/downloads/
EXTRACT_SUFX =		.tar.bz2

WANTLIB += c pthread sqlite3 zmq

LIB_DEPENDS =		net/zeromq \
			databases/sqlite3

USE_GMAKE =		Yes
ALL_TARGET =		openbsd

EXAMPLE_DIR =		${PREFIX}/share/examples/mongrel2

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	tar -cf - -C ${WRKSRC}/examples . | tar -xf - -C ${EXAMPLE_DIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${EXAMPLE_DIR}

REGRESS_TARGET	=	tests

.include <bsd.port.mk>
