# $OpenBSD: Makefile,v 1.2 2009/10/13 19:59:38 pirofti Exp $

COMMENT =	unified Ruby API for popular databases

DISTNAME =	data_objects-0.10.0
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	databases

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =		${MASTER_SITE_RUBYFORGE:=dorb/}

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		::www/ruby-addressable \
			::devel/ruby-extlib

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

MODRUBY_REGRESS =	rspec
REGRESS_DEPENDS =	::devel/ruby-rake \
			::devel/ruby-rspec \
			::devel/ruby-rcov

.include <bsd.port.mk>
