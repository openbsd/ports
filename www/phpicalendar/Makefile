# $OpenBSD: Makefile,v 1.14 2013/05/26 09:30:55 kirby Exp $

COMMENT=	web-based iCal file parser

V=		2.31
DISTNAME=	phpicalendar${V}
PKGNAME=	phpicalendar-${V}
REVISION=	4
CATEGORIES=	www

HOMEPAGE=	http://sourceforge.net/projects/phpicalendar/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=phpicalendar/}
EXTRACT_SUFX=	.tgz

MODULES=	lang/php

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/phpicalendar
SUBST_VARS=	INSTDIR

WRKSRC= 	${WRKDIST}/phpicalendar/

do-install:
	@cp -Rp ${WRKSRC} ${INSTDIR}
	@chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	@mv ${INSTDIR}/config.inc.php ${INSTDIR}/config.inc.php.default
	# Remove bogus "AppleDouble encoded Macintosh files"
	@find ${WRKINST} -name ._\* -print0 |xargs -0 rm -f

.include <bsd.port.mk>
