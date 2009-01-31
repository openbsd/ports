# $OpenBSD: Makefile,v 1.2 2009/01/31 12:51:13 bernd Exp $

COMMENT =	sorts an array in column order

VERSION =	0.3.0
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

REGRESS_DEPENDS = ::devel/ruby-rake

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake test

.include <bsd.port.mk>
