# $OpenBSD: Makefile,v 1.2 2015/07/26 03:18:00 jeremy Exp $

COMMENT =	reads and writes metadata/tags for many audio formats

VERSION =	0.7.0
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
