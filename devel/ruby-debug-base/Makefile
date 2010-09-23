# $OpenBSD: Makefile,v 1.7 2010/09/23 22:30:26 jeremy Exp $

SHARED_ONLY =	Yes

COMMENT =	faster implementation of the standard debug.rb - base

DISTNAME =	ruby-debug-base-0.10.3
REVISION =	0
CATEGORIES =	devel

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	${MASTER_SITE_RUBYFORGE:=ruby-debug/}

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	::devel/ruby-linecache

LIB_DEPENDS =	${MODRUBY_LIB_DEPENDS}
WANTLIB +=	c m
MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

MODRUBY_REGRESS = rake

.include <bsd.port.mk>
