# $OpenBSD: Makefile,v 1.8 2007/09/15 20:38:26 merdely Exp $

COMMENT=	make pretty graphs from Analog logfiles

VERSION=	2.21
DISTNAME=	rmagic-${VERSION}
PKGNAME=	reportmagic-${VERSION}p0
CATEGORIES=	www

HOMEPAGE=	http://www.reportmagic.org/

MAINTAINER=	Sam Smith <s@msmith.net>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE} \
		http://www.reportmagic.de/ \
		http://www.reportmagic.org.uk/ \
		http://be.reportmagic.org/ \
		http://au.reportmagic.org/

RUN_DEPENDS=	::graphics/p5-GD-Graph3d \
		::www/p5-HTML-Parser \
		::devel/p5-Config-IniFiles

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

do-install:
	@perl -i -pe "s:%%PREFIX%%:${TRUEPREFIX}:g" \
		${WRKSRC}/rmagic.pl
	cd ${WRKSRC}; ${WRKSRC}/Install.PL -no_modules

.include <bsd.port.mk>
