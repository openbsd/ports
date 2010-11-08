# $OpenBSD: Makefile,v 1.4 2010/11/08 23:28:55 jeremy Exp $

COMMENT =	conforming pdf parser

DISTNAME =	pdf-reader-0.7.7
REVISION =      1
CATEGORIES =	textproc

# mit
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	:${MODRUBY_PKG_PREFIX}-ascii85->=0.9:textproc/ruby-ascii85,${FLAVOR}

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
