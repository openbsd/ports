# $OpenBSD: Makefile,v 1.1.1.1 2009/10/13 14:51:34 pirofti Exp $

COMMENT =	conforming pdf parser

DISTNAME =	pdf-reader-0.7.7
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	textproc

# mit
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	${MASTER_SITE_RUBYFORGE:=pdf-reader/}

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	:ruby-ascii85->=0.9:textproc/ruby-ascii85

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =	*

.include <bsd.port.mk>
