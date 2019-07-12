# $OpenBSD: Makefile,v 1.5 2019/07/12 21:07:45 sthen Exp $

COMMENT =		complete solution for Ruby command-line executables

DISTNAME =		commander-4.1.3
REVISION =		2
CATEGORIES =		devel

HOMEPAGE =		https://github.com/commander-rb/commander

# MIT License
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-highline,${MODRUBY_FLAVOR}>=1.6.11

CONFIGURE_STYLE = 	ruby gem

.include <bsd.port.mk>
