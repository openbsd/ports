# $OpenBSD: Makefile,v 1.12 2014/10/11 19:54:47 jeremy Exp $

COMMENT =	conforming pdf parser

DISTNAME =	pdf-reader-0.7.7
REVISION =	7
CATEGORIES =	textproc

# mit
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	textproc/ruby-ascii85,${MODRUBY_FLAVOR}>=0.9

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
