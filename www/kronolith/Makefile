# $OpenBSD: Makefile,v 1.2 2002/08/17 01:51:08 avsm Exp $ 

COMMENT=	"calendar and scheduling application for Horde"

V=		1.0
HORDE_MODULE=	kronolith
HORDE_NAME=	Kronolith

DISTNAME=	${HORDE_MODULE}-${V}
CATEGORIES=	www
HOMEPAGE=	http://www.horde.org/${HORDE_MODULE}/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_HORDE:=kronolith/tarballs/}

NO_BUILD=	Yes
NO_REGRESS=	Yes
NO_CONFIGURE=	Yes
EXTRACT_ONLY=

PREFIX=		/var/www
INSTDIR=	${PREFIX}/horde
SUBST_VARS=	INSTDIR HORDE_NAME HORDE_MODULE

RUN_DEPENDS=	:horde->=2.1:devel/horde

pre-fake:
	${INSTALL_DATA_DIR} ${INSTDIR}

do-install:
	@cd ${INSTDIR} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@mv ${INSTDIR}/${HORDE_MODULE}-${V} ${INSTDIR}/${HORDE_MODULE}

.include <bsd.port.mk>
