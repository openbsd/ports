# $OpenBSD: Makefile,v 1.10 2010/11/24 21:35:15 jeremy Exp $

COMMENT =	Ruby binding for the bcrypt() password hashing algorithm

VERSION =	2.1.2
DISTNAME =	bcrypt-ruby-${VERSION}
PKGNAME =	bcrypt-${VERSION}
REVISION =	3
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
