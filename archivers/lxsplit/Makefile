# $OpenBSD: Makefile,v 1.9 2019/07/12 20:43:28 sthen Exp $

COMMENT=	file joiner/splitter
DISTNAME=	lxsplit-0.2.4
# cranked due to old version being 1.0pre
PKGNAME=	lxsplit-1.0.2.4
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lxsplit/}

HOMEPAGE=	http://lxsplit.sourceforge.net/

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		c

NO_TEST=	Yes
USE_GMAKE=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lxsplit
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/lxsplit
	${INSTALL_PROGRAM} ${WRKSRC}/lxsplit ${PREFIX}/bin

.include <bsd.port.mk>
