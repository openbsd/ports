# $OpenBSD: Makefile,v 1.2 2002/07/05 18:29:34 wilfried Exp $ 

COMMENT=	"modular framework for web-based applications"

V=		2.0
DISTNAME=	horde-${V}
CATEGORIES=	devel www
NEED_VERSION=	1.502
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

RUN_DEPENDS=	:php4-core->=4.0.6:www/php4/core \
		:php4-imap->=4.0.6:www/php4/extensions,-imap \
		:php4-mcrypt->=4.0.6:www/php4/extensions,-mcrypt \
		:php4-mysql->=4.0.6:www/php4/extensions,-mysql \
		:php4-pear->=4.1.0:www/php4/pear

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@mv ${INSTDIR}-${V} ${INSTDIR}

.include <bsd.port.mk>
