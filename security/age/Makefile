COMMENT =	simple, modern and secure file encryption tool

MODGO_MODNAME =	filippo.io/age
MODGO_VERSION =	v1.0.0

DISTNAME =	age-${MODGO_VERSION}

CATEGORIES =	security

HOMEPAGE =	https://age-encryption.org/

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>
# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =	lang/go
NO_TEST =	Yes

MODGO_FLAGS +=	-ldflags="-X main.Version=${MODGO_VERSION}"

pre-install:
	${INSTALL_MAN} ${WRKDIR}/${MODGO_MODNAME}/doc/*.1 \
		${DESTDIR}/usr/local/man/man1

.include "modules.inc"

.include <bsd.port.mk>
