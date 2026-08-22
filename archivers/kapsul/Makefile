# modernc.org/sqlite does not support
NOT_FOR_ARCHS=	i386

COMMENT=	manage .ptar archives

MODGO_MODNAME=	github.com/PlakarKorp/kapsul
MODGO_VERSION=	v0.0.0-beta.10
DISTNAME=	kapsul-0.0.0beta10
REVISION=	0

# for patches
WRKDIST=	${WRKDIR}/github.com/PlakarKorp/kapsul@${MODGO_VERSION}

HOMEPAGE=	https://plakar.io/

CATEGORIES=	archivers sysutils

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=	lang/go

# XXX check if still needed at next release
# https://github.com/cockroachdb/swiss/commit/aa852fb3c14e2d34704a42ee989711108b6f4200; go1.27
MODGO_FLAGS +=  -tags untested_go_version

post-install:
	${INSTALL_MAN} ${WRKSRC}/kapsule.1 ${PREFIX}/man/man1/kapsul.1

.include "modules.inc"

.include <bsd.port.mk>
