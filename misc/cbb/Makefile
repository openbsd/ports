# $OpenBSD: Makefile,v 1.36 2019/02/10 15:01:40 sthen Exp $

COMMENT=	checkbook balancing tool

DISTNAME=	cbb-0.73
REVISION=	7
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
	${SUBST_CMD} ${WRKSRC}/install.pl

.include <bsd.port.mk>
