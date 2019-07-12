# $OpenBSD: Makefile,v 1.19 2019/07/12 20:47:24 sthen Exp $

COMMENT=	Berkeley's implementation of the logo programming language#'
DISTNAME=	ucblogo-6.0
DISTFILES=	${DISTNAME}{ucblogo}${EXTRACT_SUFX}

CATEGORIES=	lang

HOMEPAGE=	https://people.eecs.berkeley.edu/~bh/logo.html
MASTER_SITES=	https://people.eecs.berkeley.edu/~bh/downloads/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 c curses m

NO_TEST=	Yes

MAKE_FILE=	makefile
ALL_TARGET=	logo makehelp helpfiles helpfiles/HELPCONTENTS

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+= --wx-disable \
		--x-includes=${X11BASE}/include \
		--x-libraries=${X11BASE}/lib

pre-configure:
	rm ${WRKSRC}/config.cache
	${SUBST_CMD} ${WRKSRC}/init.c

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/ucblogo/helpfiles
	${INSTALL_DATA} ${WRKSRC}/helpfiles/* ${PREFIX}/share/ucblogo/helpfiles
	${INSTALL_DATA} ${WRKSRC}/Messages ${PREFIX}/share/ucblogo/messages
	${INSTALL_PROGRAM} ${WRKSRC}/logo ${PREFIX}/bin

.include <bsd.port.mk>
