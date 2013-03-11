# $OpenBSD: Makefile,v 1.11 2013/03/11 11:44:49 espie Exp $

COMMENT=	make pretty graphs from Analog logfiles

VERSION=	2.21
DISTNAME=	rmagic-${VERSION}
PKGNAME=	reportmagic-${VERSION}
REVISION=	0
CATEGORIES=	www

HOMEPAGE=	http://www.reportmagic.org/

MAINTAINER=	Sam Smith <s@msmith.net>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE} \
		http://www.reportmagic.de/ \
		http://www.reportmagic.org.uk/ \
		http://be.reportmagic.org/ \
		http://au.reportmagic.org/

RUN_DEPENDS=	graphics/p5-GD-Graph3d \
		www/p5-HTML-Parser \
		devel/p5-Config-IniFiles

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	@perl -i -pe "s:%%PREFIX%%:${TRUEPREFIX}:g" \
		${WRKSRC}/rmagic.pl
	cd ${WRKSRC}; ${WRKSRC}/Install.PL -no_modules

.include <bsd.port.mk>
