COMMENT =		pager with incremental search and transparent decompression

MODGO_MODNAME =		github.com/walles/moor/v2
MODGO_VERSION =	v2.10.1

DISTNAME =		moor-${MODGO_VERSION}
WRKDIST =		${WRKDIR}/${MODGO_MODNAME}@${MODGO_VERSION}

CATEGORIES =	sysutils textproc

MAINTAINER =		Lydia Sobot <chilledfrogs@disroot.org>

# BSD2
PERMIT_PACKAGE =	Yes
MODULES =		lang/go

SUBST_VARS +=		WRKSRC

MODGO_LDFLAGS +=	-X main.versionString=${MODGO_VERSION}
MODGO_TEST_TARGET =	cd ${WRKSRC} && ${MODGO_TEST_CMD} ${MODGO_MODNAME}/cmd/moor

post-patch:
	${SUBST_CMD} ${WRKSRC}/internal/reader/reader_test.go

post-install:
	${INSTALL_MAN} ${WRKSRC}/moor.1 ${PREFIX}/man/man1

.include "modules.inc"
.include <bsd.port.mk>
