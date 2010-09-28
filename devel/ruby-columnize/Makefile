# $OpenBSD: Makefile,v 1.6 2010/09/28 20:12:16 jeremy Exp $

COMMENT =	sorts an array in column order

VERSION =	0.3.1
DISTNAME =	columnize-${VERSION}
PKGNAME =	ruby-${DISTNAME}
REVISION =	0
CATEGORIES =	devel

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

PKG_ARCH=	*

do-regress:
	@cd ${WRKBUILD} && ${RUBY} test/test-columnize.rb

.include <bsd.port.mk>
