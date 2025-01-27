# github.com/creack/pty only supports these archs
ONLY_FOR_ARCHS = aarch64 arm amd64 i386

COMMENT =	terminal email client

MODGO_MODNAME =	git.sr.ht/~rjarry/aerc
MODGO_VERSION =	v0.0.0-20250125205548-962ca08f1d7a

V =		0.20.0
DISTNAME =	aerc-$V

CATEGORIES =	mail

HOMEPAGE =	https://aerc-mail.org

MAINTAINER =	Johannes Thyssen Tishman <ports@thyssentishman.com>

# MIT
PERMIT_PACKAGE = Yes

WANTLIB += c pthread

MODULES =	lang/go

USE_GMAKE =	yes

BUILD_DEPENDS =	converters/base64 \
		textproc/scdoc

RUN_DEPENDS =	devel/desktop-file-utils

FLAVORS =	notmuch
FLAVOR ?=

.if ${FLAVOR:Mnotmuch}
MODGO_FLAGS +=	-tags=notmuch
LIB_DEPENDS =	mail/notmuch/notmuch
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

.include "modules.inc"

.include <bsd.port.mk>
