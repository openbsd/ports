# $OpenBSD: Makefile,v 1.1.1.1 2008/10/26 16:19:28 pirofti Exp $

SHARED_ONLY =	Yes

COMMENT =	caches (Ruby source) files

DISTNAME =	linecache-0.43
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	devel

MAINTAINER =	Paul Irofti <bulibuta@sdf.lonestar.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_RUBYFORGE:=rocky-hacks/}

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

WANTLIB =	c m
LIB_DEPENDS =	${MODRUBY_LIB_DEPENDS}

REGRESS_DEPENDS = ::devel/ruby-rake

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake test

.include <bsd.port.mk>
