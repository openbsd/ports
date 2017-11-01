# $OpenBSD: Makefile,v 1.6 2017/11/01 10:12:25 jeremy Exp $

COMMENT =		create and manage complex tmux sessions easily

DISTNAME =		tmuxinator-0.9.0
FULLPKGNAME =		${DISTNAME}
CATEGORIES =		sysutils
REVISION =		1

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

MODRUBY_HANDLE_FLAVORS = No

CONFIGURE_STYLE =	ruby gem
GEM_FLAGS =		--no-format-executable

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-thor,${MODRUBY_FLAVOR} \
			textproc/ruby-erubis,${MODRUBY_FLAVOR}

# Fix mux.fish symlink
pre-configure:
	ln -shf tmuxinator.fish ${WRKSRC}/completion/mux.fish

.include <bsd.port.mk>
