# $OpenBSD: Makefile,v 1.13 2009/08/10 06:32:43 kili Exp $

COMMENT=	spreadsheet program under X11

DISTNAME=	xspread3.1.1c
PKGNAME=	xspread-3.1.1cp0
CATEGORIES=	math

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 c curses m pthread-stubs termlib xcb

MASTER_SITES=	${MASTER_SITE_OPENBSD}

USE_X11=	Yes
CONFIGURE_STYLE=	gnu old
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include" \
		LIBS="-L${X11BASE}/lib"

INSTALL_TARGET= install install.man

post-install:
	@find ${WRKSRC} -name "*.tmp" -delete || /usr/bin/true
	${INSTALL_DATA_DIR} \
		${PREFIX}/share/xspread/{doc,documents,tests}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xspread
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/xspread
	${INSTALL_DATA} ${WRKSRC}/x/notes ${PREFIX}/share/xspread
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/xspread/doc
	${INSTALL_DATA} ${WRKSRC}/documents/* ${PREFIX}/share/xspread/documents
	${INSTALL_DATA} ${WRKSRC}/sample_files/* \
		${PREFIX}/share/examples/xspread
	${INSTALL_DATA} ${WRKSRC}/tests/* ${PREFIX}/share/xspread/tests

.include <bsd.port.mk>
