# $OpenBSD: Makefile,v 1.1.1.1 2014/05/28 21:59:41 jeremy Exp $

COMMENT =	reads and writes metadata/tags for many audio formats

VERSION =	0.6.0
DISTNAME =	taglib-ruby-${VERSION}
PKGNAME =	taglib-${VERSION}
CATEGORIES =	audio

HOMEPAGE =	http://robinst.github.io/taglib-ruby/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = 		stdc++ tag

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

LIB_DEPENDS =		audio/taglib

# Tests depend on unported ruby library (shoulda-context)

.include <bsd.port.mk>
