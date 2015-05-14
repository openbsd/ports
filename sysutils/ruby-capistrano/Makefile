# $OpenBSD: Makefile,v 1.20 2015/05/14 17:58:21 jasper Exp $

COMMENT =	execute commands in parallel on multiple remote machines

DISTNAME =	capistrano-3.4.0
CATEGORIES =	sysutils

HOMEPAGE =	http://www.capistranorb.com/

# MIT
PERMIT_PACKAGE_CDROM =		Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		net/ruby-sshkit,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
