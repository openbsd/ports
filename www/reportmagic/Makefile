# $OpenBSD: Makefile,v 1.1.1.1 2002/02/27 01:01:57 naddy Exp $

COMMENT=	"make pretty graphs from Analog logfiles"

DISTNAME=	rmagic-2.13
CATEGORIES=	www
NEED_VERSION=	1.504

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
	@perl -i -pe "s:%%PREFIX%%:${PREFIX}/share/reportmagic/:g" \
		${WRKSRC}/rmagic.pl
	cd ${WRKSRC}; ${WRKSRC}/Install.PL -no_modules

.include <bsd.port.mk>
