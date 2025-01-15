COMMENT =		simple tool for verifying gpg signatures

MODGO_MODNAME =		suah.dev/ogvt
MODGO_VERSION =		v1.2.2

DISTNAME =		ogvt-${MODGO_VERSION}

CATEGORIES =		security

HOMEPAGE =		https://git.sr.ht/~qbit/ogvt

# BSD
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += c pthread

MODULES =	lang/go

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/${MODGO_BINDIR} && \
		${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/* \
			 ${PREFIX}/${MODGO_BINDIR};
	${INSTALL_MAN} ${WRKSRC}/ogvt.1 ${PREFIX}/man/man1/

do-test:
	sed -i -e '/^go build/d' -e 's,>/dev/null,,' ${WRKSRC}/run_test.sh
	ln -fs ${WRKDIR}/go/bin/ogvt ${WRKSRC}/
	cd ${WRKSRC}; sh ${WRKSRC}/run_test.sh

.include "modules.inc"

.include <bsd.port.mk>
