# $OpenBSD: Makefile,v 1.8 2018/06/13 22:26:52 jeremy Exp $

COMMENT =	reads and writes metadata/tags for many audio formats

VERSION =	0.7.1
DISTNAME =	taglib-ruby-${VERSION}
PKGNAME =	taglib-${VERSION}
REVISION =	2
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
