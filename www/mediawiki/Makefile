# $OpenBSD: Makefile,v 1.7 2005/12/08 09:16:10 bernd Exp $

COMMENT=	"web-based collaborative editing environment"

V=		1.5.3
DISTNAME=	mediawiki-${V}
CATEGORIES=	www

HOMEPAGE=	http://wikipedia.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wikipedia/}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/mediawiki
SUBST_VARS=	INSTDIR

RUN_DEPENDS=	:php5-mysql-*:www/php5/extensions,-mysql \
		:php5-gd-*:www/php5/extensions,-gd

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@find ${PREFIX} -name '.cvsignore' | xargs rm
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}
	@mv ${INSTDIR}-${V} ${INSTDIR}

.include <bsd.port.mk>
