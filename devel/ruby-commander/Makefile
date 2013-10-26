# $OpenBSD: Makefile,v 1.2 2013/10/26 23:55:35 jeremy Exp $

COMMENT =		complete solution for Ruby command-line executables

DISTNAME =		commander-4.1.3
REVISION =		0
CATEGORIES =		devel

HOMEPAGE =		http://visionmedia.github.com/commander

# MIT License
PERMIT_PACKAGE_CDROM =   Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-highline,${MODRUBY_FLAVOR}>=1.6.11

CONFIGURE_STYLE = 	ruby gem

.include <bsd.port.mk>
