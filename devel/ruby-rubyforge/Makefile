# $OpenBSD: Makefile,v 1.7 2009/01/06 13:21:54 pirofti Exp $

COMMENT =	script which automates a limited set of rubyforge operations

DISTNAME =	rubyforge-1.0.2
PKGNAME =	ruby-${DISTNAME}
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
