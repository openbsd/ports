# $OpenBSD: Makefile,v 1.4 2009/08/20 22:18:26 bernd Exp $

COMMENT =	sorts an array in column order

VERSION =	0.3.1
DISTNAME =	columnize-${VERSION}
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	devel

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	${MASTER_SITE_RUBYFORGE:=rocky-hacks/}

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

PKG_ARCH=	*

do-regress:
	@cd ${WRKBUILD} && ${RUBY} test/test-columnize.rb

.include <bsd.port.mk>
