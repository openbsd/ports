# $OpenBSD: Makefile,v 1.9 2010/09/23 22:30:27 jeremy Exp $

COMMENT =	script which automates a limited set of rubyforge operations

DISTNAME =	rubyforge-1.0.4
PKGNAME =	ruby-${DISTNAME}
REVISION =	0
CATEGORIES =	devel net

# MIT
PERMIT_PACKAGE_CDROM =		yes	
PERMIT_PACKAGE_FTP =		yes
PERMIT_DISTFILES_CDROM =	yes
PERMIT_DISTFILES_FTP =		yes

MASTER_SITES =		${MASTER_SITE_RUBYFORGE:=codeforpeople/}

MODULES =		lang/ruby

CONFIGURE_STYLE =	 ruby gem

PKG_ARCH =	*

.include <bsd.port.mk>
