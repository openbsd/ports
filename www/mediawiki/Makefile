# $OpenBSD: Makefile,v 1.20 2009/12/04 11:06:29 stephan Exp $

COMMENT =	web-based collaborative editing environment

DISTNAME =	mediawiki-1.15.1
CATEGORIES =	www

HOMEPAGE =	http://www.mediawiki.org/

MAINTAINER =	Stephan A. Rickauer <stephan@openbsd.org>

# GPL
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
	@find ${PREFIX} -name '.cvsignore' -exec rm {} \;
	@find ${PREFIX} -name \*.orig -exec rm {} \;
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}

.include <bsd.port.mk>
