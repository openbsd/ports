# $OpenBSD: Makefile,v 1.8 2020/07/29 13:33:22 bket Exp $

COMMENT =	utility and library for computing hash sums

DISTNAME =	rhash-1.4.0-src
PKGNAME =	${DISTNAME:S/-src$//}

SHARED_LIBS =	rhash 0.0

CATEGORIES =	security

HOMEPAGE =	http://rhash.sf.net

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =	c

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=rhash/}

TEST_DEPENDS =	sysutils/ggrep

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--enable-lib-static \
			--extra-cflags="${CFLAGS}" \
			--extra-ldflags="${LDFLAGS}" \
			--mandir=${PREFIX}/man \
			--prefix=${PREFIX} \
			--sysconfdir=${SYSCONFDIR}

DEBUG_PACKAGES =	${BUILD_PACKAGES}

WRKDIST =	${WRKDIR}/${PKGNAME:S/^rhash/RHash/}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/common_func.h \
		${WRKSRC}/configure

pre-test:
	sed -i 's,grep,ggrep,g' ${WRKSRC}/tests/test_rhash.sh

do-test:
	cd ${WRKSRC}/tests && env \
	LD_PRELOAD=${WRKBUILD}/librhash/librhash.so.${LIBrhash_VERSION} \
		./test_rhash.sh --full

.include <bsd.port.mk>
