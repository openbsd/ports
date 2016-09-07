# $OpenBSD: Makefile,v 1.3 2016/09/07 10:56:22 naddy Exp $

COMMENT =		create and manage complex tmux sessions easily

DISTNAME =		tmuxinator-0.8.1
REVISION =		1
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
