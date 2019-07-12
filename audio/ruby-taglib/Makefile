# $OpenBSD: Makefile,v 1.10 2019/07/12 20:43:40 sthen Exp $

COMMENT =	reads and writes metadata/tags for many audio formats

VERSION =	0.7.1
DISTNAME =	taglib-ruby-${VERSION}
PKGNAME =	taglib-${VERSION}
REVISION =	3
CATEGORIES =	audio

HOMEPAGE =	http://robinst.github.io/taglib-ruby/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB = 		${COMPILER_LIBCXX} tag

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

LIB_DEPENDS =		audio/taglib

# Tests depend on unported ruby library (shoulda-context)

.include <bsd.port.mk>
