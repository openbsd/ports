# $OpenBSD: Makefile,v 1.14 2005/10/31 15:11:20 mbalmer Exp $ 

COMMENT=	"highly configurable pop3/imap4 webmail client"

HORDE_MODULE=	imp
HORDE_NAME=	IMP

DISTNAME=	${HORDE_MODULE}-h3-4.0.4
CATEGORIES=	mail www
HOMEPAGE=	http://www.horde.org/${HORDE_MODULE}/

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_HORDE:=imp/tarballs/}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*
EXTRACT_ONLY=

PREFIX=		/var/www
INSTDIR=	${PREFIX}/horde
SUBST_VARS=	INSTDIR HORDE_NAME HORDE_MODULE

PHP_VERSION=	5
RUN_DEPENDS=	:horde->=3.0:devel/horde \
		:php${PHP_VERSION}-imap-*:www/php${PHP_VERSION}/extensions,-imap

pre-fake:
	${INSTALL_DATA_DIR} ${INSTDIR}

do-install:
	@cd ${INSTDIR} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@mv ${INSTDIR}/${DISTNAME} ${INSTDIR}/${HORDE_MODULE}

.include <bsd.port.mk>
