# $OpenBSD: Makefile,v 1.1.1.1 2010/01/08 13:15:38 stephan Exp $

COMMENT =	MediaWiki extension for http based authentication

V =		0.1
DISTNAME =	mediawiki-httpauth-${V}
CATEGORIES =	www

MAINTAINER =	Stephan A. Rickauer <stephan@openbsd.org>

HOMEPAGE =	http://www.mediawiki.org/wiki/Extension:HttpAuth
MASTER_SITES =	http://github.com/oremj/mediawiki-http-auth/tarball/v${V}/

# Mozilla Public License 1.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

NO_BUILD =	Yes
NO_REGRESS =	Yes
PKG_ARCH =	*

PREFIX =	/var/www
EXTENSIONSDIR =	${PREFIX}/mediawiki/extensions

RUN_DEPENDS =	:mediawiki->=1.13.2:www/mediawiki

do-install:
	${INSTALL_DATA_DIR} ${EXTENSIONSDIR}
	@mv ${WRKDIR}/oremj-mediawiki-http-auth-4be6b72/HttpAuthPlugin.php \
		${EXTENSIONSDIR}

.include <bsd.port.mk>
