COMMENT =	terminal email client

MODGO_MODNAME =	git.sr.ht/~rjarry/aerc
MODGO_VERSION =	v0.0.0-20230511091235-f1772c92f92e

V =		0.15.2
DISTNAME =	aerc-$V
REVISION =	1

CATEGORIES =	mail

HOMEPAGE =	https://aerc-mail.org

MAINTAINER =	Thim Cederlund <thim@cederlund.de>

# MIT
PERMIT_PACKAGE = Yes

WANTLIB += c pthread notmuch

MODULES =	lang/go

USE_GMAKE =	yes

BUILD_DEPENDS =	converters/base64 \
		textproc/scdoc

LIB_DEPENDS =	mail/notmuch/notmuch

RUN_DEPENDS =	devel/desktop-file-utils

CFLAGS +=	-I${LOCALBASE}/include
LDFLAGS +=	-L ${LOCALBASE}/lib
MODGO_FLAGS +=	-tags=notmuch

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

.include "modules.inc"

.include <bsd.port.mk>
