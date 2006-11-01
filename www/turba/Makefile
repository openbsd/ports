# $OpenBSD: Makefile,v 1.10 2006/11/01 10:49:41 mbalmer Exp $ 

COMMENT=	"contact management module for Horde"

HORDE_MODULE=	turba
HORDE_NAME=	Turba

DISTNAME=	${HORDE_MODULE}-h3-2.1.2
CATEGORIES=	www
HOMEPAGE=	http://www.horde.org/${HORDE_MODULE}/

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_HORDE:=turba/}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*
EXTRACT_ONLY=

PREFIX=		/var/www
INSTDIR=	${PREFIX}/horde
SUBST_VARS=	INSTDIR

RUN_DEPENDS=	:horde->=3.0:devel/horde \
		:imp-h3-*:mail/imp

pre-fake:
	${INSTALL_DATA_DIR} ${INSTDIR}

do-install:
	@cd ${INSTDIR} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@mv ${INSTDIR}/${DISTNAME} ${INSTDIR}/${HORDE_MODULE}

.include <bsd.port.mk>
