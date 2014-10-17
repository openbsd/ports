# $OpenBSD: Makefile,v 1.23 2014/10/17 18:34:17 jasper Exp $

COMMENT =	Ruby binding for the bcrypt() password hashing algorithm

VERSION =	3.0.1
DISTNAME =	bcrypt-ruby-${VERSION}
PKGNAME =	bcrypt-${VERSION}
REVISION =	3
CATEGORIES =	security

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

HOMEPAGE =	http://bcrypt-ruby.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH} \
		devel/ruby-rake-compiler,${MODRUBY_FLAVOR}
MODRUBY_TEST =	rake rspec3

.include <bsd.port.mk>
