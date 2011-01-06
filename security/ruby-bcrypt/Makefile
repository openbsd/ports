# $OpenBSD: Makefile,v 1.11 2011/01/06 04:24:24 jeremy Exp $

COMMENT =	Ruby binding for the bcrypt() password hashing algorithm

VERSION =	2.1.2
DISTNAME =	bcrypt-ruby-${VERSION}
PKGNAME =	bcrypt-${VERSION}
REVISION =	4
CATEGORIES =	security

HOMEPAGE =	http://bcrypt-ruby.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

REGRESS_DEPENDS =	devel/ruby-rcov,${MODRUBY_FLAVOR} \
			devel/ruby-diff-lcs,${MODRUBY_FLAVOR} \
			${FULLPKGNAME}:${BUILD_PKGPATH}

MODRUBY_REGRESS =	rake rspec

.include <bsd.port.mk>
