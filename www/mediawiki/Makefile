# $OpenBSD: Makefile,v 1.13 2007/08/29 18:23:46 mbalmer Exp $

COMMENT=	"web-based collaborative editing environment"

DISTNAME=	mediawiki-1.10.1
CATEGORIES=	www

HOMEPAGE=	http://www.mediawiki.org/

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	http://download.wikimedia.org/mediawiki/1.10/

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/mediawiki
SUBST_VARS=	INSTDIR

RUN_DEPENDS=	:php5-gd-*:www/php5/extensions,-gd

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@find ${PREFIX} -name '.cvsignore' -exec rm {} \;
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}
	@mv ${INSTDIR}-${DISTNAME:S/mediawiki-//} ${INSTDIR}

.include <bsd.port.mk>
