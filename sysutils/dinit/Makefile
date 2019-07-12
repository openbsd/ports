# $OpenBSD: Makefile,v 1.2 2019/07/12 20:49:41 sthen Exp $

V =		0.5.1
COMMENT =	service monitoring / "init" system
DISTNAME =	dinit-${V}
MASTER_SITES =	https://github.com/davmac314/dinit/releases/download/v${V}/
EXTRACT_SUFX =	.tar.xz

CATEGORIES =	sysutils
HOMEPAGE =	https://github.com/davmac314/dinit

MAINTAINER =	Edd Barrett <edd@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX} c m

COMPILER =		base-clang ports-gcc
USE_GMAKE =		Yes
MAKE_FLAGS +=		CXX="${CXX}" \
			CXXFLAGS="${CXXFLAGS}" \
			SBINDIR=${TRUEPREFIX}/sbin \
			MANDIR=${TRUEPREFIX}/man \
			SYSCONTROLSOCKET=${VARBASE}/run/dinit.sock

TEST_TARGET =		check

DOCS_DIR =		${PREFIX}/share/doc/dinit
EXAMPLES_DIR =		${PREFIX}/share/examples/dinit
post-install:
	${INSTALL_DATA_DIR} ${EXAMPLES_DIR}
	${INSTALL_DATA} ${FILESDIR}/boot.example ${EXAMPLES_DIR}/boot

	${INSTALL_DATA_DIR} ${DOCS_DIR}
	${INSTALL_DATA} ${WRKSRC}/README.md ${DOCS_DIR}
	${INSTALL_DATA} ${WRKSRC}/doc/COMPARISON ${DOCS_DIR}
	${INSTALL_DATA} ${WRKSRC}/doc/DESIGN ${DOCS_DIR}
	${INSTALL_DATA} ${WRKSRC}/doc/getting_started.md ${DOCS_DIR}

.include <bsd.port.mk>
