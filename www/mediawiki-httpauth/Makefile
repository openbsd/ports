# $OpenBSD: Makefile,v 1.7 2013/07/05 09:34:35 jasper Exp $

COMMENT =	MediaWiki extension for http based authentication

V =		0.1
DISTNAME =	mediawiki-httpauth-${V}
REVISION =	1
CATEGORIES =	www

MAINTAINER =	Wen Heping <wenheping@gmail.com>

HOMEPAGE =	http://www.mediawiki.org/wiki/Extension:HttpAuth
MASTER_SITES =	http://github.com/oremj/mediawiki-http-auth/tarball/v${V}/

# Mozilla Public License 1.1
PERMIT_PACKAGE_CDROM =	Yes

NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

PREFIX =	${VARBASE}/www
EXTENSIONSDIR =	${PREFIX}/mediawiki/extensions

RUN_DEPENDS =	www/mediawiki>=1.13.2

do-install:
	${INSTALL_DATA_DIR} ${EXTENSIONSDIR}
	${INSTALL_DATA} \
		${WRKDIR}/oremj-mediawiki-http-auth-4be6b72/HttpAuthPlugin.php \
		${EXTENSIONSDIR}

.include <bsd.port.mk>
