# $OpenBSD: Makefile,v 1.30 2009/07/17 16:38:48 naddy Exp $

COMMENT=	checkbook balancing tool

DISTNAME=	cbb-0.73
PKGNAME=	${DISTNAME}p5
CATEGORIES=	misc
HOMEPAGE=	http://www.fifi.org/doc/cbb/html/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_BACKUP}

MODULES=	x11/tk
MODTK_VERSION=	8.4

RUN_DEPENDS=	::misc/plan \
		${MODTK_RUN_DEPENDS}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

pre-configure:
	@mv ${WRKSRC}/install.pl ${WRKSRC}/install.pl.in
	@sed -e "s:/usr/local:${PREFIX}:"  -e "s:lib/cbb:share/cbb:" \
		${WRKSRC}/install.pl.in > ${WRKSRC}/install.pl

.include <bsd.port.mk>
