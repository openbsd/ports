# $OpenBSD: Makefile,v 1.5 2017/04/10 11:45:23 sthen Exp $

COMMENT =	reads and writes metadata/tags for many audio formats

VERSION =	0.7.1
DISTNAME =	taglib-ruby-${VERSION}
PKGNAME =	taglib-${VERSION}
REVISION =	0
CATEGORIES =	audio

HOMEPAGE =	http://robinst.github.io/taglib-ruby/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = 		${LIBCXX} tag

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

LIB_DEPENDS =		audio/taglib

# Tests depend on unported ruby library (shoulda-context)

.include <bsd.port.mk>
