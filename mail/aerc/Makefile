# github.com/creack/pty only supports these archs
ONLY_FOR_ARCHS = aarch64 arm amd64 i386

COMMENT =	terminal email client

MODGO_MODNAME =	git.sr.ht/~rjarry/aerc
MODGO_VERSION =	v0.0.0-20260728163848-c2f86b7abde3

V =		0.22.0
DISTNAME =	aerc-$V
REVISION =	0

CATEGORIES =	mail

HOMEPAGE =	https://aerc-mail.org

MAINTAINER =	Andrew Kloet <andrew@kloet.net>

# MIT
PERMIT_PACKAGE = Yes

WANTLIB += c pthread

MODULES =	lang/go

USE_GMAKE =	yes

BUILD_DEPENDS =	converters/base64 \
		textproc/scdoc

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

TEST_DEPENDS =	security/gnupg

FLAVORS =	notmuch
FLAVOR ?=

.if ${FLAVOR:Mnotmuch}
MODGO_FLAGS +=	-tags=notmuch
LIB_DEPENDS =	mail/notmuch,-main
WANTLIB += notmuch
.endif

CFLAGS +=	-I${LOCALBASE}/include
LDFLAGS +=	-L ${LOCALBASE}/lib

MAKE_FLAGS =	CC="${CC}" \
		CFLAGS="${CFLAGS}" \
		CGO_CFLAGS="${CFLAGS}" \
		CGO_LDFLAGS="${LDFLAGS}" \
		GO_EXTRA_LDFLAGS="${LDFLAGS}" \
		GOFLAGS="${MODGO_FLAGS}" \
		PREFIX=${PREFIX} \
		VERSION=$V

FAKE_FLAGS =	DESTDIR=${WRKINST} \
		PREFIX=${LOCALBASE} \
		MANDIR=${TRUEPREFIX}/man

WRKDIST =	${WRKSRC}

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS}

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${ALL_FAKE_FLAGS} ${INSTALL_TARGET}

post-install:
	chmod +x ${PREFIX}/libexec/aerc/filters/*
	cd ${PREFIX}/libexec/aerc/filters && ln -s html html-unsafe

# needs network
do-test:
	# One test fails due to filters/vectors/wrap-asciiart.expected being
	# missing as it is not included in the source tarball.
	chmod +x ${WRKSRC}/filters/{test.sh,calendar}
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${MAKE_FLAGS} tests LANG=C.UTF-8

.include "modules.inc"

.include <bsd.port.mk>
