COMMENT =	terminal email client

MODGO_MODNAME =	git.sr.ht/~rjarry/aerc
MODGO_VERSION =	v0.0.0-20221025213056-8153f59188bf

V =		0.13.0
DISTNAME =	aerc-$Vpl20221025

CATEGORIES =	mail

HOMEPAGE =	https://aerc-mail.org

MAINTAINER =	Omar Polo <op@openbsd.org>

# MIT
PERMIT_PACKAGE = Yes

WANTLIB += c pthread notmuch

MODULES =	lang/go

USE_GMAKE =	yes

BUILD_DEPENDS =	textproc/scdoc

LIB_DEPENDS =	mail/notmuch/notmuch

RUN_DEPENDS =	devel/desktop-file-utils

CFLAGS +=	-I${LOCALBASE}/include
LDFLAGS +=	-L${LOCALBASE}/lib
MODGO_FLAGS +=	-tags=notmuch

MAKE_FLAGS =	CGO_CFLAGS="${CFLAGS}" \
		CGO_LDFLAGS="${LDFLAGS}" \
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
