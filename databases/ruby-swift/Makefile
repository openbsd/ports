# $OpenBSD: Makefile,v 1.1.1.1 2010/12/20 17:43:58 jeremy Exp $

COMMENT =	fast database API and ORM for ruby 1.9

DISTNAME =	swift-0.7.2
CATEGORIES =	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby
FLAVOR =	ruby19

WANTLIB =	c m stdc++ e2fs-uuid pcrecpp
LIB_DEPENDS =	databases/dbic++ \
		devel/pcre \
		sysutils/e2fsprogs
RUN_DEPENDS =	databases/dbic++

CONFIGURE_STYLE = ruby gem ext

.include <bsd.port.mk>
