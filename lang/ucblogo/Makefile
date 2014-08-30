# $OpenBSD: Makefile,v 1.15 2014/08/30 21:54:08 jasper Exp $

COMMENT=	Berkeley's implementation of the logo programming language
DISTNAME=	ucblogo-5.5
REVISION=	3
CATEGORIES=	lang

HOMEPAGE=	http://www.cs.berkeley.edu/~bh/logo.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 c m pthread-stubs termcap xcb
NO_TEST=	Yes

MAKE_FILE=	makefile
ALL_TARGET=	logo makehelp helpfiles helpfiles/HELPCONTENTS

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--x-includes=${X11BASE}/include \
		--x-libraries=${X11BASE}/lib

pre-configure:
	@perl -pi -e 's:\@logopath@:${LOCALBASE}/share/ucblogo:g;' \
		${WRKSRC}/init.c
	@perl -pi -e 's:\@logohelp@:${LOCALBASE}/share/ucblogo/helpfiles:g;' \
		${WRKSRC}/init.c

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/ucblogo/helpfiles
	${INSTALL_DATA} ${WRKSRC}/helpfiles/* ${PREFIX}/share/ucblogo/helpfiles
	${INSTALL_DATA} ${WRKSRC}/Messages ${PREFIX}/share/ucblogo/messages
	${INSTALL_PROGRAM} ${WRKSRC}/logo ${PREFIX}/bin

.include <bsd.port.mk>
