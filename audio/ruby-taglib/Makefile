# $OpenBSD: Makefile,v 1.7 2017/07/26 22:45:15 sthen Exp $

COMMENT =	reads and writes metadata/tags for many audio formats

VERSION =	0.7.1
DISTNAME =	taglib-ruby-${VERSION}
PKGNAME =	taglib-${VERSION}
REVISION =	1
CATEGORIES =	audio

HOMEPAGE =	http://robinst.github.io/taglib-ruby/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = 		${COMPILER_LIBCXX} tag

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

LIB_DEPENDS =		audio/taglib

# Tests depend on unported ruby library (shoulda-context)

.include <bsd.port.mk>
