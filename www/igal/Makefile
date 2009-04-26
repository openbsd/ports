# $OpenBSD: Makefile,v 1.5 2009/04/26 01:24:37 ckuethe Exp $

COMMENT=	online Image GALlery generator

V=		1.4.7
DISTNAME=	igal-$V-wt
PKGNAME=	igal-${V}p0
CATEGORIES=	www graphics

HOMEPAGE=	http://trexler.at/igal/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

RUN_DEPENDS=	::graphics/ImageMagick \
		::graphics/jpeg \
		::graphics/jhead

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

DATADIR=	${PREFIX}/share/igal

do-configure:
	@perl -pi -e "s,/usr/local,${PREFIX},g;" \
		-e "s,${PREFIX}/lib/igal,${DATADIR},g;" ${WRKSRC}/igal{,.1}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/igal ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/igal.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${DATADIR}
	${INSTALL_DATA} ${WRKSRC}/*.{css,html,png} ${DATADIR}

.include <bsd.port.mk>
