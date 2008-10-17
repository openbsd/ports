# $OpenBSD: Makefile,v 1.22 2008/10/17 21:58:09 sthen Exp $ 

COMMENT=	highly configurable pop3/imap4 webmail client

HORDE_MODULE=	imp
HORDE_NAME=	IMP

DISTNAME=	${HORDE_MODULE}-h3-4.1.6
CATEGORIES=	mail www
HOMEPAGE=	http://www.horde.org/${HORDE_MODULE}/

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_HORDE:=imp/}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*
EXTRACT_ONLY=

PREFIX=		/var/www
INSTDIR=	${PREFIX}/horde
SUBST_VARS=	INSTDIR HORDE_NAME HORDE_MODULE

RUN_DEPENDS=	:horde->=3.0:devel/horde \
		:php5-imap-*:www/php5/extensions,-imap \
		:pear-Mail-*:mail/pear-Mail \
		:pear-Mail-Mime-*:mail/pear-Mail-Mime \
		:pear-Net-SMTP-*:net/pear-Net-SMTP \
		:pear-Auth-SASL-*:security/pear-Auth-SASL \
		:pear-HTTP-Request-*:net/pear-HTTP-Request

pre-fake:
	${INSTALL_DATA_DIR} ${INSTDIR}

do-install:
	@cd ${INSTDIR} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@mv ${INSTDIR}/${DISTNAME} ${INSTDIR}/${HORDE_MODULE}

.include <bsd.port.mk>
