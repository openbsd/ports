# $OpenBSD: Makefile,v 1.2 2016/05/07 08:58:36 jasper Exp $

COMMENT =		create and manage complex tmux sessions easily

DISTNAME =		tmuxinator-0.8.1
REVISION =		0
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

# drop GEM_BIN_SUFFIX
post-install:
	mv ${PREFIX}/${GEM_BIN}/tmuxinator{${GEM_BIN_SUFFIX},}

.include <bsd.port.mk>
