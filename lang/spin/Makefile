# $OpenBSD: Makefile,v 1.3 2019/07/12 20:47:23 sthen Exp $

V =		6.4.7
REVISION =	0
COMMENT =	tool for formal verification of parallel software
DISTNAME =	spin${V:S/.//g}
PKGNAME =	spin-${V}
CATEGORIES =	lang

HOMEPAGE =	https://spinroot.com/
MAINTAINER =	Ori Bernstein <ori@eigenstate.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c

MASTER_SITES =	https://eigenstate.org/distfiles/ \
		https://spinroot.com/spin/Src/

ALL_TARGET =	spin
MAKE_FILE =	makefile
MAKE_FLAGS =	CFLAGS="${CFLAGS} -std=c99 -DNXT"

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/Spin/Src${V}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/spin
	cd ${WRKSRC}/../Examples && find * -type d -exec ${INSTALL_DATA_DIR} \
		"${PREFIX}/share/examples/spin/{}" \;
	cd ${WRKSRC}/../Examples && find * -type f -exec ${INSTALL_DATA} \
		"{}" "${PREFIX}/share/examples/spin/{}" \;

.include <bsd.port.mk>
