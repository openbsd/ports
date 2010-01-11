# $OpenBSD: Makefile,v 1.21 2010/01/11 12:48:01 stephan Exp $

COMMENT =	web-based collaborative editing environment

DISTNAME =	mediawiki-1.15.1
CATEGORIES =	www

HOMEPAGE =	http://www.mediawiki.org/

MAINTAINER =	Stephan A. Rickauer <stephan@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES=	http://download.wikimedia.org/mediawiki/1.15/

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/mediawiki
SUBST_VARS=	INSTDIR

RUN_DEPENDS=	:php5-gd-*:www/php5/extensions,-gd

do-install:
	@mv ${WRKDIST} ${INSTDIR}
	@find ${PREFIX} -name '.cvsignore' -or -name \*.orig -exec rm {} \;
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}

.include <bsd.port.mk>
