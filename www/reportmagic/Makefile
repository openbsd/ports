# $OpenBSD: Makefile,v 1.2 2002/11/19 14:26:01 brad Exp $

COMMENT=	"make pretty graphs from Analog logfiles"

DISTNAME=	rmagic-2.13
PKGNAME=	${DISTNAME}p1
CATEGORIES=	www

HOMEPAGE=	http://www.reportmagic.org/

MAINTAINER=	Sam Smith <s@msmith.net>

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

do-install:
	@perl -i -pe "s:%%PREFIX%%:${TRUEPREFIX}:g" \
		${WRKSRC}/rmagic.pl
	cd ${WRKSRC}; ${WRKSRC}/Install.PL -no_modules

.include <bsd.port.mk>
