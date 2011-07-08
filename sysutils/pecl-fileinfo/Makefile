# $OpenBSD: Makefile,v 1.4 2011/07/08 22:32:29 robert Exp $

SHARED_ONLY =		Yes

COMMENT =		PHP support for retrieving info about files

DISTNAME =		Fileinfo-1.0.4
PKGNAME =		pecl-${DISTNAME:L}
CATEGORIES =		sysutils
MAINTAINER =		Johan Huldtgren <jhuldtgren@gmail.com>

REVISION =		0

HOMEPAGE =		http://pecl.php.net/package/fileinfo/

# PHP License
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://pecl.php.net/get/
EXTRACT_SUFX =		.tgz

AUTOCONF_VERSION =	2.62
AUTOMAKE_VERSION =	1.9

MODULES=		lang/php
BUILD_DEPENDS =		www/pear \
			${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

CONFIGURE_STYLE =	gnu

LIB_DEPENDS =		devel/libmagic
WANTLIB +=		z magic

DESTDIRNAME =		INSTALL_ROOT

REGRESS_TARGET =	test

USE_LIBTOOL =		Yes
LIBTOOL_FLAGS +=	--tag=disable-static

MODPHP_DO_SAMPLE=	fileinfo
MODPHP_DO_PHPIZE=	Yes

.include <bsd.port.mk>
