# $OpenBSD: Makefile,v 1.1.1.1 2008/09/28 16:48:29 bernd Exp $

COMMENT =		light-weight application support

DISTNAME =		assistance-0.1.5
PKGNAME =		ruby-${DISTNAME}
CATEGORIES =		devel lang/ruby

MAINTAINER =		Clint Pachl <pachl@ecentryx.com>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_RUBYFORGE:=assistance/}

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

REGRESS_DEPENDS =	::devel/ruby-rake \
			::devel/ruby-rspec \
			::devel/ruby-diff-lcs

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake spec_no_cov

.include <bsd.port.mk>
