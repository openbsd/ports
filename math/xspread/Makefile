# $OpenBSD: Makefile,v 1.20 2015/01/22 18:41:16 naddy Exp $

COMMENT=	spreadsheet program under X11

DISTNAME=	xspread3.1.1c
PKGNAME=	xspread-3.1.1c
REVISION=	1
CATEGORIES=	math

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 c curses m termlib

MASTER_SITES=	${MASTER_SITE_OPENBSD}

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
