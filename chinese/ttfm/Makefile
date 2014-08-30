# $OpenBSD: Makefile,v 1.27 2014/08/30 21:54:07 jasper Exp $

COMMENT=	big5/gb enhanced truetype font manager

DISTNAME=	ttfm-0.9.5
PKGNAME=	zh-${DISTNAME}
REVISION=	1
CATEGORIES=	chinese

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c freetype z

MAKE_FLAGS=	CC="${CC}" CFLAGS='${CFLAGS} `freetype-config --cflags`'

NO_TEST=	Yes

DOCS=	README USAGE
SCRIPTS=	gscjk.ttfm xttfm.ttfm

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ttfm
	${INSTALL_DATA_DIR} ${PREFIX}/share/ttfm
	${INSTALL_PROGRAM} ${WRKBUILD}/ttfinfo ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKBUILD}/ttfm.sh ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ttfm.sh.1 ${PREFIX}/man/man1
	@cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/ttfm
	@cd ${WRKSRC}/modules; ${INSTALL_SCRIPT} ${SCRIPTS} ${PREFIX}/share/ttfm

.include <bsd.port.mk>
