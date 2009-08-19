# $OpenBSD: Makefile,v 1.1.1.1 2009/08/19 07:03:35 msf Exp $

COMMENT =	provides a registry of file types

DISTNAME =	polyglot-0.2.6
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	devel

HOMEPAGE =	http://polyglot.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =		${MASTER_SITE_RUBYFORGE:=polyglot/}

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

.include <bsd.port.mk>
