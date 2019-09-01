# $OpenBSD: Makefile,v 1.16 2019/09/01 11:10:36 jasper Exp $

COMMENT =		create and manage complex tmux sessions easily

DISTNAME =		tmuxinator-1.1.1
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
			devel/ruby-xdg,${MODRUBY_FLAVOR}<3 \
			textproc/ruby-erubis,${MODRUBY_FLAVOR}

# Fix mux.fish symlink
pre-configure:
	ln -shf tmuxinator.fish ${WRKSRC}/completion/mux.fish

.include <bsd.port.mk>
