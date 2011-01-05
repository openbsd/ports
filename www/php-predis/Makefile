# $OpenBSD: Makefile,v 1.3 2011/01/05 11:03:31 dcoppa Exp $

COMMENT =		PHP client library for the Redis key-value database

VER =			0.6.3
DISTNAME =		nrk-predis-v${VER}-PHP5.2-0-g3f058cb
PKGNAME =		php-predis-${VER}
CATEGORIES =		www databases

HOMEPAGE =		http://github.com/nrk/predis/wiki

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://www.arcane-labs.com/download/OpenBSD/

NO_BUILD =		Yes
NO_REGRESS =		Yes
PKG_ARCH =		*

# Although this library is not PEAR, installing it into
# ${PREFIX}/pear/lib will make sure it's picked up by PHP
# without the need to adjust the include path in php.ini
PREFIX =		/var/www
INSTDIR =		${PREFIX}/pear/lib/
SUBST_VARS =		INSTDIR

WRKDIST = 		${WRKDIR}/nrk-predis-6925eef

PHP_VERSION =		5

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	${INSTALL_DATA} ${WRKSRC}/lib/*.php ${INSTDIR}
	@chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
