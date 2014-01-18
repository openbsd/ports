# $OpenBSD: Makefile,v 1.1.1.1 2014/01/18 09:27:37 jasper Exp $

COMMENT =		Gyoku translates Ruby Hashes to XML

DISTNAME =		gyoku-1.1.1

CATEGORIES =		textproc

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		textproc/ruby-builder,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
