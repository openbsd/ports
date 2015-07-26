# $OpenBSD: Makefile,v 1.24 2015/07/26 01:15:55 jeremy Exp $

COMMENT =	Ruby binding for the bcrypt() password hashing algorithm

VERSION =	3.1.10
DISTNAME =	bcrypt-${VERSION}
CATEGORIES =	security

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

HOMEPAGE =	http://bcrypt-ruby.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_TEST =	rspec3
MODRUBY_TEST_TARGET = spec

.include <bsd.port.mk>
