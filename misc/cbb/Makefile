# $OpenBSD: Makefile,v 1.35 2014/08/30 21:54:08 jasper Exp $

COMMENT=	checkbook balancing tool

DISTNAME=	cbb-0.73
REVISION=	6
CATEGORIES=	misc
HOMEPAGE=	http://gna.org/projects/cbb/
MAINTAINER=	Stuart Cassoff <stwo@users.sourceforge.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/tk

RUN_DEPENDS=	misc/plan \
		${MODTK_RUN_DEPENDS}

FAKE_FLAGS=	MODTK_BIN=${MODTK_BIN}
NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

pre-configure:
	@mv ${WRKSRC}/install.pl ${WRKSRC}/install.pl.in
	@sed -e "s:/usr/local:${PREFIX}:"  -e "s:lib/cbb:share/cbb:" \
		${WRKSRC}/install.pl.in > ${WRKSRC}/install.pl

.include <bsd.port.mk>
