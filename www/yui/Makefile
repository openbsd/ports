# $OpenBSD: Makefile,v 1.12 2013/07/05 09:34:36 jasper Exp $

COMMENT-main =	yahoo ui library toolkit
COMMENT-docs =	yahoo ui library examples
CATEGORIES =	www devel

V =		2.8.1
EXTRACT_SUFX =	.zip
DISTNAME =	yui_${V}
PKGNAME-main =	yui-${V}
PKGNAME-docs =	yui-doc-${V}
REVISION-docs =	1
REVISION-main = 0
MULTI_PACKAGES = -main -docs

HOMEPAGE =	http://developer.yahoo.com/yui/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://yuilibrary.com/downloads/yui2/

EXTRACT_ONLY =
BUILD_DEPENDS =	archivers/unzip

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*

PREFIX =	${VARBASE}/www

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/htdocs/yui
	@cd ${PREFIX}/htdocs && unzip -oq ${FULLDISTDIR}/${DISTFILES}
	@mv ${PREFIX}/htdocs/yui/as-docs ${PREFIX}/htdocs/yui/docs

YUI =		htdocs/yui
BUILD =		${YUI}/build
DOC =		${YUI}/docs
EX =		${YUI}/examples
SUBST_VARS =	BUILD DOC EX YUI

RUN_DEPENDS-docs =	${BASE_PKGPATH}

.include <bsd.port.mk>
