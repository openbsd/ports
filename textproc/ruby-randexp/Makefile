# $OpenBSD: Makefile,v 1.1.1.1 2009/01/30 01:47:14 bernd Exp $

COMMENT =	generate random strings from most regular expressions

DISTNAME =	randexp-0.1.4
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	textproc

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =		${MASTER_SITE_RUBYFORGE:=randexp/}

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

REGRESS_DEPENDS =	::devel/ruby-rake \
			::devel/ruby-rspec \
			::devel/ruby-rcov

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake specs

.include <bsd.port.mk>
