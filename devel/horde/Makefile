# $OpenBSD: Makefile,v 1.10 2003/11/23 19:04:47 avsm Exp $ 

COMMENT=	"modular framework for web-based applications"

V=		2.2.4
DISTNAME=	horde-${V}
CATEGORIES=	devel www
HOMEPAGE=	http://www.horde.org/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_HORDE:=horde/tarballs/}

NO_BUILD=	Yes
NO_REGRESS=	Yes
EXTRACT_ONLY=

PREFIX=		/var/www
INSTDIR=	${PREFIX}/horde
SUBST_VARS=	INSTDIR

RUN_DEPENDS=	:php4-core->=4.3.1:www/php4/core \
		:php4-mcrypt->=4.3.1:www/php4/extensions,-mcrypt \
		:php4-domxml->=4.3.1:www/php4/extensions,-domxml \
		:php4-pear->=4.3.1:www/php4/core,-pear \
		::devel/pear-Log \
		::mail/pear-Mail-Mime

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@mv ${INSTDIR}-${V} ${INSTDIR}

.include <bsd.port.mk>
