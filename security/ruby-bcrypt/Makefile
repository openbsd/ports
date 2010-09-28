# $OpenBSD: Makefile,v 1.6 2010/09/28 20:12:18 jeremy Exp $

SHARED_ONLY =	Yes

COMMENT =	Ruby binding for the bcrypt() password hashing algorithm

VERSION =	2.1.2
DISTNAME =	bcrypt-ruby-${VERSION}
PKGNAME =	ruby-bcrypt-${VERSION}
REVISION =	1
CATEGORIES =	security

HOMEPAGE =	http://bcrypt-ruby.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

WANTLIB =		c m
LIB_DEPENDS =		${MODRUBY_LIB_DEPENDS}

CONFIGURE_STYLE =	ruby gem

REGRESS_DEPENDS =	::devel/ruby-rcov \
			::devel/ruby-diff-lcs \
			:${PKGNAME}:${BASE_PKGPATH}

MODRUBY_REGRESS =	rake rspec

.include <bsd.port.mk>
