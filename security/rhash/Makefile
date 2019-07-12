# $OpenBSD: Makefile,v 1.5 2019/07/12 20:49:36 sthen Exp $

COMMENT =	utility and library for computing hash sums

DISTNAME =	rhash-1.3.5-src

PKGNAME =	${DISTNAME:S/-src$//}
REVISION =	0

SHARED_LIBS =	rhash 0.0

CATEGORIES =	security

HOMEPAGE =	http://rhash.anz.ru/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	c

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=rhash/}

MAKE_FLAGS =	SONAME="librhash.so.${LIBrhash_VERSION}"

FAKE_FLAGS =	PREFIX=${PREFIX} \
		INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_SHARED="${INSTALL_DATA}" \
		MANDIR=${PREFIX}/man \
		SONAME="librhash.so.${LIBrhash_VERSION}"

WRKDIST =	${WRKDIR}/${PKGNAME:S/^rhash/RHash/}

ALL_TARGET =	build-shared

INSTALL_TARGET =install-shared

pre-configure:
	${SUBST_CMD} ${WRKSRC}/common_func.h \
		${WRKSRC}/parse_cmdline.c

do-test:
	cd ${WRKSRC}/tests && env \
	LD_PRELOAD=${WRKBUILD}/librhash/librhash.so.${LIBrhash_VERSION} \
		./test_rhash.sh --full

.include <bsd.port.mk>
