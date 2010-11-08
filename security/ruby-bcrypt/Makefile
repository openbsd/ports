# $OpenBSD: Makefile,v 1.8 2010/11/08 23:28:55 jeremy Exp $

COMMENT =	Ruby binding for the bcrypt() password hashing algorithm

VERSION =	2.1.2
DISTNAME =	bcrypt-ruby-${VERSION}
PKGNAME =	bcrypt-${VERSION}
REVISION =	2
CATEGORIES =	security

HOMEPAGE =	http://bcrypt-ruby.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

REGRESS_DEPENDS =	:${MODRUBY_PKG_PREFIX}-rcov-*:devel/ruby-rcov,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-diff-lcs-*:devel/ruby-diff-lcs,${FLAVOR} \
			:${FULLPKGNAME}:${BASE_PKGPATH}

MODRUBY_REGRESS =	rake rspec

.include <bsd.port.mk>
