COMMENT = C11 standard threads library

DISTNAME =	libstdthreads-${V}
V =		0.3.2
REVISION =	1

CATEGORIES =	devel

SITES =	https://code.tetaneutral.net/mherrb/libstdthreads//archive/
DISTFILES =     ${DISTNAME}-1{${DISTNAME}}.tar.gz

SHARED_LIBS +=  stdthreads                0.0 # 0.0

WRKDIST =	${WRKDIR}/libstdthreads

# BSD 2-Clause
PERMIT_PACKAGE =	Yes

WANTLIB =		pthread
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

FAKE_FLAGS =		LIBDIR=${TRUEPREFIX}/lib \
			MANDIR=${TRUEPREFIX}/man/man

post-install:
	cd ${WRKSRC} && ${INSTALL} -c -m 444 -o root -g bin \
		threads.h ${PREFIX}/include

DEBUG_PACKAGES = 	${BUILD_PACKAGES}

NO_TEST =		Yes

.include <bsd.port.mk>

