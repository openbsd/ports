# $OpenBSD: Makefile,v 1.6 2000/08/19 04:40:57 kevlo Exp $
#

DISTNAME=	xspread3.1.1c
PKGNAME=	xspread-3.1.1c
CATEGORIES=	math
NEED_VERSION=	1.319

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://linux.tucows.com/files/x11/office/

CONFIGURE_STYLE=	gnu old
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include" \
		LIBS="-L${X11BASE}/lib"

INSTALL_TARGET= install install.man

post-install:
	@find ${WRKSRC} -name "*.tmp" -delete || /usr/bin/true
	${INSTALL_DATA_DIR} \
		${PREFIX}/share/xspread/{doc,documents,sample_files,tests}
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/xspread
	${INSTALL_DATA} ${WRKSRC}/x/notes ${PREFIX}/share/xspread
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/xspread/doc
	${INSTALL_DATA} ${WRKSRC}/documents/* ${PREFIX}/share/xspread/documents
	${INSTALL_DATA} ${WRKSRC}/sample_files/* \
		${PREFIX}/share/xspread/sample_files
	${INSTALL_DATA} ${WRKSRC}/tests/* ${PREFIX}/share/xspread/tests

.include <bsd.port.mk>
