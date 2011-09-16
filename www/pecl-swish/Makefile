# $OpenBSD: Makefile,v 1.5 2011/09/16 12:00:07 espie Exp $

SHARED_ONLY =	Yes
COMMENT =	PHP interface to swish-e

DISTNAME =	swish-0.3.0
REVISION =	1
PKGNAME =	pecl-${DISTNAME}
CATEGORIES =	www
EXTRACT_SUFX =	.tgz

HOMEPAGE =	http://pecl.php.net/package/swish
MASTER_SITES =	http://pecl.php.net/get/

# PHP License
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =	m pcre pcreposix swish-e z

AUTOCONF_VERSION =	2.59
AUTOMAKE_VERSION =	1.4

MODULES =	lang/php
LIB_DEPENDS =	textproc/swish-e
BUILD_DEPENDS =	www/pear \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

DESTDIRNAME =	INSTALL_ROOT

USE_LIBTOOL =	Yes
NO_REGRESS =	Yes

CONFIGURE_STYLE =	gnu

MODPHP_DO_SAMPLE=	swish
MODPHP_DO_PHPIZE=	Yes

post-configure:
	@perl -pi -e 's,(finish_cmds=").*,\1" #,g' ${WRKSRC}/libtool

.include <bsd.port.mk>
