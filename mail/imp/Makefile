# $OpenBSD: Makefile,v 1.6 2003/04/03 10:38:35 avsm Exp $ 

COMMENT=	"highly configurable pop3/imap4 webmail client"

V=		3.2.1
HORDE_MODULE=	imp
HORDE_NAME=	IMP

DISTNAME=	${HORDE_MODULE}-${V}
CATEGORIES=	mail www
HOMEPAGE=	http://www.horde.org/${HORDE_MODULE}/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_HORDE:=imp/tarballs/}

NO_BUILD=	Yes
NO_REGRESS=	Yes
NO_CONFIGURE=	Yes
EXTRACT_ONLY=

PREFIX=		/var/www
INSTDIR=	${PREFIX}/horde
SUBST_VARS=	INSTDIR HORDE_NAME HORDE_MODULE

RUN_DEPENDS=	:horde->=2.1:devel/horde \
		:php4-imap->=4.3.1:www/php4/extensions,-imap

pre-fake:
	${INSTALL_DATA_DIR} ${INSTDIR}

do-install:
	@cd ${INSTDIR} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@mv ${INSTDIR}/${HORDE_MODULE}-${V} ${INSTDIR}/${HORDE_MODULE}

.include <bsd.port.mk>
