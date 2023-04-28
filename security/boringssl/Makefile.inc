NOT_FOR_ARCHS ?=	${BE_ARCHS}

COMMENT ?=		fork of OpenSSL that is designed to meet Google's needs

CATEGORIES ?=		security

MAINTAINER ?=		Bob Beck <beck@openbsd.org>, \
			Theo Buehler <tb@openbsd.org>

# ISC
PERMIT_PACKAGE ?=	Yes

PORTHOME ?=		${WRKDIR}

# XXX go pullutes /tmp and binaries need 'wxallowed' for BTI transition
MAKE_ENV ?=		TMPDIR=${WRKBUILD}
