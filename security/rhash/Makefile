COMMENT =	utility and library for computing hash sums

DISTNAME =	rhash-1.4.3-src
PKGNAME =	${DISTNAME:S/-src$//}

SHARED_LIBS =	rhash 0.1

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

post-extract:
	sed -i 's,grep,ggrep,g' ${WRKSRC}/tests/test_rhash.sh

pre-configure:
	${SUBST_CMD} ${WRKSRC}/common_func.h \
		${WRKSRC}/configure

do-test:
	cd ${WRKSRC}/tests && env \
	LD_PRELOAD=${WRKBUILD}/librhash/librhash.so.${LIBrhash_VERSION} \
		./test_rhash.sh --full ../rhash

.include <bsd.port.mk>
