# $OpenBSD: Makefile,v 1.1.1.1 2009/01/30 02:08:38 bernd Exp $

SHARED_ONLY =	Yes

COMMENT =	Ruby binding for the bcrypt() password hashing algorithm

VERSION =	2.0.3
DISTNAME =	bcrypt-ruby-${VERSION}
PKGNAME =	ruby-bcrypt-${VERSION}
CATEGORIES =	security

HOMEPAGE =	http://bcrypt-ruby.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =		${MASTER_SITE_RUBYFORGE:=bcrypt-ruby/}

MODULES =		lang/ruby

WANTLIB =		c m
LIB_DEPENDS =		${MODRUBY_LIB_DEPENDS}

CONFIGURE_STYLE =	ruby gem

REGRESS_DEPENDS =	::devel/ruby-rake \
			::devel/ruby-rspec \
			::devel/ruby-rcov \
			::devel/ruby-diff-lcs \
			:${PKGNAME}:${BASE_PKGPATH}

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake spec

.include <bsd.port.mk>
