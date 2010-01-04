# $OpenBSD: Makefile,v 1.3 2010/01/04 08:22:59 ajacoutot Exp $

COMMENT=		open source micro messaging platform

DISTNAME=		statusnet-0.8.2
PKGNAME=		${DISTNAME}p1

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
			:php${PHP_VERSION}-curl-*:www/php${PHP_VERSION}/extensions,-curl \
			:php${PHP_VERSION}-gd-*:www/php${PHP_VERSION}/extensions,-gd \
			:php${PHP_VERSION}-mbstring-*:www/php${PHP_VERSION}/extensions,-mbstring \
			:php${PHP_VERSION}-tidy-*:www/php${PHP_VERSION}/extensions,-tidy
			
NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

PREFIX=                 /var/www
INSTDIR=                ${PREFIX}/statusnet
SUBST_VARS=             INSTDIR

PHP_VERSION=		5

FLAVORS=		mysql pgsql
FLAVOR?=		mysql

.if ${FLAVOR:L:Mmysql}
RUN_DEPENDS+=		:php${PHP_VERSION}-mysql-*:www/php${PHP_VERSION}/extensions,-mysql
.elif ${FLAVOR:L:Mpgsql}
RUN_DEPENDS+=		:php${PHP_VERSION}-pgsql-*:www/php${PHP_VERSION}/extensions,-pgsql
.else
ERRORS+=		"Fatal: Invalid flavor: ${FLAVOR}"
.endif

do-install:
	cp -Rp ${WRKSRC} ${INSTDIR}
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
