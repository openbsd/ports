# $OpenBSD: Makefile,v 1.6 2010/11/24 21:35:15 jeremy Exp $

COMMENT =	conforming pdf parser

DISTNAME =	pdf-reader-0.7.7
REVISION =	2
CATEGORIES =	textproc

# mit
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	textproc/ruby-ascii85,${MODRUBY_FLAVOR}>=0.9

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
