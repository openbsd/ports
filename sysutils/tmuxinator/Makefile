# $OpenBSD: Makefile,v 1.7 2017/11/05 16:45:10 jasper Exp $

COMMENT =		create and manage complex tmux sessions easily

DISTNAME =		tmuxinator-0.10.0
FULLPKGNAME =		${DISTNAME}
CATEGORIES =		sysutils

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

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
