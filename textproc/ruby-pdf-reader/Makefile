# $OpenBSD: Makefile,v 1.8 2011/09/16 11:41:42 espie Exp $

COMMENT =	conforming pdf parser

DISTNAME =	pdf-reader-0.7.7
REVISION =	4
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
