# $OpenBSD: Makefile,v 1.4 2002/08/12 00:56:51 avsm Exp $ 

COMMENT=	"modular framework for web-based applications"

V=		2.1
DISTNAME=	horde-${V}
CATEGORIES=	devel www
HOMEPAGE=	http://www.horde.org/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.horde.org/pub/horde/tarballs/ \
		ftp://ftp.uk.horde.org/mirrors/ftp.horde.org/pub/horde/tarballs

NO_BUILD=	Yes
NO_REGRESS=	Yes
NO_CONFIGURE=	Yes
EXTRACT_ONLY=

PREFIX=		/var/www
INSTDIR=	${PREFIX}/horde
SUBST_VARS=	INSTDIR

RUN_DEPENDS=	:php4-core->=4.2.1:www/php4/core \
		:php4-mcrypt->=4.2.1:www/php4/extensions,-mcrypt \
		:php4-pear->=4.2.1:www/php4/pear

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@mv ${INSTDIR}-${V} ${INSTDIR}

.include <bsd.port.mk>
