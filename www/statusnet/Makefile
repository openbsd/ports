# $OpenBSD: Makefile,v 1.7 2010/04/09 21:10:34 jasper Exp $

COMMENT=		open source micro messaging platform

DISTNAME=		statusnet-0.8.3
PKGNAME=		${DISTNAME}p0

CATEGORIES=		www net

HOMEPAGE=		http://status.net/

# AGPLv3
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		${HOMEPAGE}

RUN_DEPENDS=		::databases/pear-DB \
			::databases/pear-DB_DataObject \
			::devel/pear-System-Command \
			::mail/pear-Mail \
			::mail/pear-Mail-mimeDecode \
			::mail/pear-Mime-Type \
			::mail/pecl-mailparse \
			::net/pear-Net-SMTP \
			::net/pear-Services-oEmbed \
			::net/pear-Net-Socket \
			::net/pear-Net-URL-Mapper \
			::textproc/sphinx \
			::www/apache-httpd \
			::www/php-markdown \
			:php5-curl-*:www/php5/extensions,-curl \
			:php5-gd-*:www/php5/extensions,-gd \
			:php5-mbstring-*:www/php5/extensions,-mbstring \
			:php5-tidy-*:www/php5/extensions,-tidy
			
NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

PREFIX=                 /var/www
INSTDIR=                ${PREFIX}/statusnet
SUBST_VARS=             INSTDIR

do-install:
	cp -Rp ${WRKSRC} ${INSTDIR}
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
