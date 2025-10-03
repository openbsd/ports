COMMENT-main =		game of trees version control system
COMMENT-server =	game of trees repository server
COMMENT-webd =		game of trees repository fast-cgi server
COMMENT-gitwrapper =	invoke an appropriate Git repository server
COMMENT-sysd =		game of trees system management daemon

V =			0.120
DISTNAME =		got-${V}
PKGNAME-server =	gotd-${V}
PKGNAME-webd =		gotwebd-${V}
PKGNAME-gitwrapper =	gitwrapper-${V}
PKGNAME-sysd =		gotsysd-${V}
CATEGORIES =		devel
HOMEPAGE =		https://gameoftrees.org
MAINTAINER =		Stefan Sperling <stsp@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

RUN_DEPENDS-server =	devel/got,-gitwrapper
RUN_DEPENDS-webd =	devel/got,-main

MULTI_PACKAGES =	-main -server -webd -gitwrapper -sysd

# uses pledge()
WANTLIB-main =		c curses m panel pthread tls util z
WANTLIB-server =	c crypto event m tls util z
WANTLIB-webd =		c event m util z
WANTLIB-gitwrapper =	c
WANTLIB-sysd =		c event m util z

MAKE_FLAGS =		CC="${CC}"
ALL_TARGET =		all server webd sysd
INSTALL_TARGET =	install server-install webd-install sysd-install

SITES =			https://gameoftrees.org/releases/

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# some tests will fail without working non-interactive 'ssh 127.0.0.1'
TEST_IS_INTERACTIVE =	Yes
TEST_ENV =		$${SSH_AUTH_SOCK:+SSH_AUTH_SOCK="$$SSH_AUTH_SOCK"}
TEST_DEPENDS =		devel/git \
			www/p5-HTTP-Daemon \
			${PKGPATH}=${V}

PREFIX-webd =		${VARBASE}/www
TEST_TARGET =		regress
FAKE_FLAGS =		MANDIR=${PREFIX}/man/man CHROOT_DIR=${VARBASE}/www

post-install:
	@ln -s gitwrapper ${PREFIX}/bin/git-upload-pack
	@ln -s gitwrapper ${PREFIX}/bin/git-receive-pack
	@mkdir -p ${DESTDIR}/${VARBASE}/www/got/public

.include <bsd.port.mk>
