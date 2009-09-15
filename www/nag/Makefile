# $OpenBSD: Makefile,v 1.15 2009/09/15 17:37:22 jasper Exp $ 

COMMENT=	multiuser task list manager

HORDE_MODULE=	nag
HORDE_NAME=	Nag

DISTNAME=	${HORDE_MODULE}-h3-2.3.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	www
HOMEPAGE=	http://www.horde.org/${HORDE_MODULE}/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_HORDE:=nag/}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*
EXTRACT_ONLY=

PREFIX=		/var/www
INSTDIR=	${PREFIX}/horde
SUBST_VARS=	INSTDIR HORDE_NAME HORDE_MODULE

RUN_DEPENDS=	:horde->=3.0:devel/horde \
		:php5-imap-*:www/php5/extensions,-imap

pre-fake:
	${INSTALL_DATA_DIR} ${INSTDIR}

do-install:
	@cd ${INSTDIR} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@mv ${INSTDIR}/${DISTNAME} ${INSTDIR}/${HORDE_MODULE}

.include <bsd.port.mk>
