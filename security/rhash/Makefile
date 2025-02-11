COMMENT =	utility and library for computing hash sums

GH_ACCOUNT =	rhash
GH_PROJECT =	RHash
GH_TAGNAME =	v1.4.5
PKGNAME =	${DISTNAME:L}

SHARED_LIBS =	rhash 1.1

CATEGORIES =	security

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =	c

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--enable-lib-static \
			--extra-cflags="${CFLAGS}" \
			--extra-ldflags="${LDFLAGS}" \
			--mandir=${PREFIX}/man \
			--prefix=${PREFIX} \
			--sysconfdir=${SYSCONFDIR}

DEBUG_PACKAGES =	${BUILD_PACKAGES}

FAKE_FLAGS =		SYSCONFDIR=${WRKINST}${PREFIX}/share/examples/rhash

TEST_DEPENDS =		sysutils/ggrep

pre-configure:
	${SUBST_CMD} ${WRKSRC}/common_func.h \
		${WRKSRC}/configure

# can't just remove --enable-lib-static otherwise headers are missed
post-install:
	rm ${PREFIX}/lib/librhash.a

do-test:
	ln -fs ${LOCALBASE}/bin/ggrep ${WRKDIR}/bin/grep
	cd ${WRKSRC}/tests && env ${ALL_TEST_ENV} \
		LD_LIBRARY_PATH=${WRKBUILD}/librhash \
		./test_rhash.sh --full ../rhash

.include <bsd.port.mk>
