# $OpenBSD: Makefile,v 1.2 2006/11/10 23:20:19 steven Exp $

COMMENT=	"collaborative web-based system for project management"

V=		1.70
DISTNAME=	webcollab-${V}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	www

HOMEPAGE=	http://webcollab.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=webcollab/}

RUN_DEPENDS=	:php5-mysql-*:www/php5/extensions,-mysql

EXTRACT_ONLY=
NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/webcollab
SUBST_VARS=	INSTDIR

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@mv ${INSTDIR}-${V} ${INSTDIR}
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/*

.include <bsd.port.mk>
