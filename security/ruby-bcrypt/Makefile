# $OpenBSD: Makefile,v 1.14 2011/11/17 16:08:00 jeremy Exp $

COMMENT =	Ruby binding for the bcrypt() password hashing algorithm

VERSION =	3.0.0
DISTNAME =	bcrypt-ruby-${VERSION}
PKGNAME =	bcrypt-${VERSION}
REVISION=	0
CATEGORIES =	security

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

HOMEPAGE =	http://bcrypt-ruby.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

REGRESS_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH} \
			devel/ruby-rake-compiler,${MODRUBY_FLAVOR}
MODRUBY_REGRESS =	rake rspec2

.include <bsd.port.mk>
