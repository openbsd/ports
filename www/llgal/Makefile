# $OpenBSD: Makefile,v 1.15 2019/07/12 20:50:48 sthen Exp $

COMMENT=	command-line online gallery generator

DISTNAME=	llgal-0.13.19
CATEGORIES=	www graphics

HOMEPAGE=	http://bgoglin.free.fr/llgal/

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://github.com/bgoglin/llgal/archive/

BUILD_DEPENDS=	devel/gettext,-tools

RUN_DEPENDS=	graphics/ImageMagick \
		graphics/p5-Image-ExifTool \
		graphics/p5-Image-Size \
		devel/p5-Locale-gettext \
		www/p5-URI

USE_GMAKE=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

MAKE_ENV=	SYSCONFDIR=${SYSCONFDIR}

WRKDIST=	${WRKDIR}/llgal-${DISTNAME}

pre-build:
	@perl -pi -e 's,/usr/share,${PREFIX}/share,' ${WRKSRC}/llgal.1

post-install:
	${INSTALL_MAN} ${WRKSRC}/llgal.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/llgalrc.5 ${PREFIX}/man/man5

.include <bsd.port.mk>
