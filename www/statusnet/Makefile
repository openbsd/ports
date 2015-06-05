# $OpenBSD: Makefile,v 1.32 2015/06/05 06:00:23 robert Exp $

COMMENT=		open source micro messaging platform

DISTNAME=		statusnet-1.1.1
REVISION=		2

CATEGORIES=		www net

HOMEPAGE=		http://status.net/

# AGPLv3
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=		${HOMEPAGE}

MODULES=		lang/php
RUN_DEPENDS=		databases/pear-DB \
			databases/pear-DB_DataObject \
			devel/pear-System-Command \
			mail/pear-Mail \
			mail/pear-Mail-mimeDecode \
			mail/pear-Mime-Type \
			mail/pecl-mailparse \
			net/pear-Net-SMTP \
			net/pear-Services-oEmbed \
			net/pear-Net-Socket \
			net/pear-Net-URL-Mapper \
			textproc/sphinx \
			www/php-markdown \
			lang/php/${MODPHP_VERSION},-curl \
			lang/php/${MODPHP_VERSION},-gd \
			lang/php/${MODPHP_VERSION},-tidy \
			lang/php/${MODPHP_VERSION},-mysqli

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

PREFIX=		${VARBASE}/www
INSTDIR=                ${PREFIX}/statusnet
SUBST_VARS=             INSTDIR

do-install:
	cp -Rp ${WRKSRC} ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
