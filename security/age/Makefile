COMMENT =	simple, modern and secure file encryption tool

MODGO_MODNAME =	filippo.io/age
MODGO_VERSION =	v1.2.0

DISTNAME =	age-${MODGO_VERSION}

CATEGORIES =	security

HOMEPAGE =	https://age-encryption.org/

MAINTAINER =	Volker Schlecht <openbsd-ports@schlecht.dev>

# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =	lang/go

MODGO_FLAGS +=	-ldflags="-X main.Version=${MODGO_VERSION}"

pre-install:
	${INSTALL_MAN} ${WRKDIR}/${MODGO_MODNAME}/doc/*.1 \
		${PREFIX}/man/man1

# c2sp.org/!c!c!t!v/age contains some read-only files and directories
post-test:
	chmod -R u+w ${MODGO_WORKSPACE}

.include "modules.inc"

.include <bsd.port.mk>
