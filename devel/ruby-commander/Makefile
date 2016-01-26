# $OpenBSD: Makefile,v 1.4 2016/01/26 12:50:24 jasper Exp $

COMMENT =		complete solution for Ruby command-line executables

DISTNAME =		commander-4.1.3
REVISION =		2
CATEGORIES =		devel

HOMEPAGE =		https://github.com/commander-rb/commander

# MIT License
PERMIT_PACKAGE_CDROM =   Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-highline,${MODRUBY_FLAVOR}>=1.6.11

CONFIGURE_STYLE = 	ruby gem

.include <bsd.port.mk>
