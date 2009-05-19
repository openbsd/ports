# $OpenBSD: Makefile,v 1.3 2009/05/19 21:05:00 pirofti Exp $

COMMENT =	sorts an array in column order

VERSION =	0.3.0
DISTNAME =	columnize-${VERSION}
PKGNAME =	ruby-${DISTNAME}p0
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

REGRESS_DEPENDS = ::devel/ruby-rake

do-regress:
	@cd ${WRKBUILD} && ${RUBY} test/test-columnize.rb

.include <bsd.port.mk>
