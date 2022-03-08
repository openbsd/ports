COMMENT =		encrypted and deduplicated backup tool

V =			0.10.3
DISTNAME =		bupstash-v${V}
PKGNAME =		bupstash-${V}

CATEGORIES =		sysutils

HOMEPAGE =		https://bupstash.io/

MAINTAINER =		Bjorn Ketelaars <bket@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		c c++abi m pthread sodium

MASTER_SITES =		https://github.com/andrewchambers/bupstash/releases/download/v${V}/
DISTFILES =		${DISTNAME}-man${EXTRACT_SUFX} \
			${DISTNAME}-src+deps${EXTRACT_SUFX}

MODULES =		devel/cargo
MODCARGO_RUSTFLAGS =	-C debuginfo=0

LIB_DEPENDS =		security/libsodium
TEST_DEPENDS =		devel/bats

SEPARATE_BUILD =	Yes

WRKDIST =		${WRKDIR}

post-install:
.for m in 1 7
	${INSTALL_MAN} ${WRKSRC}/*.$m ${PREFIX}/man/man$m/
.endfor

.include <bsd.port.mk>
