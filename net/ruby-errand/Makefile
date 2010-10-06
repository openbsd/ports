# $OpenBSD: Makefile,v 1.1.1.1 2010/10/06 07:30:41 jasper Exp $

COMMENT =	bindings for RRD functions

DISTNAME =	errand-0.7.2
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	net

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

RUN_DEPENDS =		::net/rrdtool,-ruby

.include <bsd.port.mk>
