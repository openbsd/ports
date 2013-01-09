# $OpenBSD: Makefile,v 1.7 2013/01/09 17:38:52 jeremy Exp $

COMMENT =	fast database API and ORM for ruby 1.9

DISTNAME =	swift-0.14.0
REVISION =	0
CATEGORIES =	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby
FLAVORS =	ruby19
FLAVOR =	ruby19

WANTLIB =	c m stdc++ e2fs-uuid pcrecpp
BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	databases/dbic++>=0.6.0

CONFIGURE_STYLE = ruby gem ext

.include <bsd.port.mk>
