# $OpenBSD: Makefile,v 1.5 2009/05/26 14:27:34 benoit Exp $

COMMENT-main =	yahoo ui library toolkit
COMMENT-docs =	yahoo ui library examples
CATEGORIES =	www devel

V =		2.7.0b
EXTRACT_SUFX =	.zip
DISTNAME =	yui_${V}
PKGNAME-main =	yui-${V}
PKGNAME-docs =	yui-doc-${V}
MULTI_PACKAGES = -main -docs

HOMEPAGE =	http://developer.yahoo.com/yui/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://yuilibrary.com/downloads/yui2/

EXTRACT_ONLY =
BUILD_DEPENDS =	::archivers/unzip

NO_BUILD =	Yes
NO_REGRESS =	Yes

PKG_ARCH =	*

PREFIX =	/var/www

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/htdocs/yui
	@cd ${PREFIX}/htdocs && unzip -oq ${FULLDISTDIR}/${DISTFILES}
	@mv ${PREFIX}/htdocs/yui/as-docs ${PREFIX}/htdocs/yui/docs

YUI =		htdocs/yui
BUILD =		${YUI}/build
DOC =		${YUI}/docs
EX =		${YUI}/examples
SUBST_VARS =	BUILD DOC EX YUI

RUN_DEPENDS-docs =	::${BASE_PKGPATH}

.include <bsd.port.mk>
