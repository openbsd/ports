# $OpenBSD: Makefile,v 1.18 2013/03/11 11:41:28 espie Exp $

COMMENT =	Ruby binding for the bcrypt() password hashing algorithm

VERSION =	3.0.1
DISTNAME =	bcrypt-ruby-${VERSION}
PKGNAME =	bcrypt-${VERSION}
REVISION =	0
CATEGORIES =	security

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

HOMEPAGE =	http://bcrypt-ruby.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH} \
			devel/ruby-rake-compiler,${MODRUBY_FLAVOR}
MODRUBY_TEST =	rake rspec2

.include <bsd.port.mk>
