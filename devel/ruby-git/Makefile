# $OpenBSD: Makefile,v 1.1.1.1 2011/11/17 15:27:39 jeremy Exp $

COMMENT =		ruby library wrapping calls to git CLI

DISTNAME =		git-1.2.5
CATEGORIES =		devel

HOMEPAGE =		https://github.com/schacon/ruby-git

MAINTAINER =		Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

# Does not ship with the regress tests.
NO_REGRESS = 		Yes

.include <bsd.port.mk>
