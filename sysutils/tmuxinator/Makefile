# $OpenBSD: Makefile,v 1.15 2019/07/12 20:49:53 sthen Exp $

COMMENT =		create and manage complex tmux sessions easily

DISTNAME =		tmuxinator-0.15.0
REVISION =		0
FULLPKGNAME =		${DISTNAME}
CATEGORIES =		sysutils

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

MODRUBY_HANDLE_FLAVORS = No

CONFIGURE_STYLE =	ruby gem
GEM_FLAGS =		--no-format-executable

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-thor,${MODRUBY_FLAVOR} \
			devel/ruby-xdg,${MODRUBY_FLAVOR} \
			textproc/ruby-erubis,${MODRUBY_FLAVOR}

# Fix mux.fish symlink
pre-configure:
	ln -shf tmuxinator.fish ${WRKSRC}/completion/mux.fish

.include <bsd.port.mk>
