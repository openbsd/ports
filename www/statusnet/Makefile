# $OpenBSD: Makefile,v 1.21 2012/10/10 10:45:17 jasper Exp $

COMMENT=		open source micro messaging platform

DISTNAME=		statusnet-1.1.0

CATEGORIES=		www net

HOMEPAGE=		http://status.net/

# AGPLv3
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

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
NO_REGRESS=		Yes
PKG_ARCH=		*

PREFIX=                 /var/www
INSTDIR=                ${PREFIX}/statusnet
SUBST_VARS=             INSTDIR

do-install:
	cp -Rp ${WRKSRC} ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
