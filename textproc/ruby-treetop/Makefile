# $OpenBSD: Makefile,v 1.1.1.1 2009/08/19 07:05:39 msf Exp $

COMMENT =	Ruby-based DSL for text parsing and interpretation

DISTNAME =	treetop-1.3.0
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	textproc

HOMEPAGE =	http://treetop.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =		${MASTER_SITE_RUBYFORGE:=treetop/}

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		:ruby-polyglot->=0.2.5:devel/ruby-polyglot

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

.include <bsd.port.mk>
