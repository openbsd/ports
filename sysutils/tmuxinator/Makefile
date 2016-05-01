# $OpenBSD: Makefile,v 1.1.1.1 2016/05/01 17:24:46 jasper Exp $

COMMENT =		create and manage complex tmux sessions easily

DISTNAME =		tmuxinator-0.8.1
FULLPKGNAME =		${DISTNAME}
CATEGORIES =		sysutils

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-thor,${MODRUBY_FLAVOR} \
			textproc/ruby-erubis,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
