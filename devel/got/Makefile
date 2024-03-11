COMMENT-main =		game of trees version control system
COMMENT-server =	game of trees repository server
COMMENT-webd =		game of trees repository fast-cgi server
COMMENT-gitwrapper =	invoke an appropriate Git repository server

V =			0.97
DISTNAME =		got-${V}
PKGNAME-server =	gotd-${V}
PKGNAME-webd =		gotwebd-${V}
PKGNAME-gitwrapper =	gitwrapper-${V}
CATEGORIES =		devel
HOMEPAGE =		https://gameoftrees.org
MAINTAINER =		Stefan Sperling <stsp@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

RUN_DEPENDS-server =	devel/got,-gitwrapper

MULTI_PACKAGES =	-main -server -webd -gitwrapper

# uses pledge()
WANTLIB-main =		c curses m panel pthread util z
WANTLIB-server =	c event m util z
WANTLIB-webd =		c event m util z
WANTLIB-gitwrapper =	c

MAKE_FLAGS =		CC="${CC}"
ALL_TARGET =		all server webd
INSTALL_TARGET =	install server-install webd-install

SITES =			https://gameoftrees.org/releases/

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# some tests will fail without working non-interactive 'ssh 127.0.0.1'
TEST_IS_INTERACTIVE =	Yes
TEST_ENV =		$${SSH_AUTH_SOCK:+SSH_AUTH_SOCK="$$SSH_AUTH_SOCK"}
TEST_DEPENDS =		devel/git \
			${PKGPATH}=${V}

PREFIX-webd =		${VARBASE}/www
TEST_TARGET =		regress
FAKE_FLAGS =		MANDIR=${PREFIX}/man/man CHROOT_DIR=${VARBASE}/www

post-install:
	@ln -s gitwrapper ${PREFIX}/bin/git-upload-pack
	@ln -s gitwrapper ${PREFIX}/bin/git-receive-pack

.include <bsd.port.mk>
