# $OpenBSD: Makefile,v 1.1.1.1 2009/01/30 00:54:18 bernd Exp $

COMMENT =	unified Ruby API for popular databases

DISTNAME =	data_objects-0.9.11
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

REGRESS_DEPENDS =	::devel/ruby-rake \
			::devel/ruby-rspec \
			::devel/ruby-rcov

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake spec

.include <bsd.port.mk>
