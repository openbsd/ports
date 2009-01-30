# $OpenBSD: Makefile,v 1.1.1.1 2009/01/30 00:36:58 bernd Exp $

COMMENT =	replacement for Ruby's URI implementation

DISTNAME = 	addressable-2.0.1
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	www

HOMEPAGE =	http://addressable.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =		${MASTER_SITE_RUBYFORGE:=addressable/}

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

REGRESS_DEPENDS =	::devel/ruby-rake \
			::devel/ruby-rspec \
			::devel/ruby-rcov

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake spec

.include <bsd.port.mk>
