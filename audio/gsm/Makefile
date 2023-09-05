COMMENT=	GSM audio codec library and converter

V=		gsm-1.0-pl22
DISTNAME=	${V:S/-pl/./}
WRKDIST=	${WRKDIR}/${V}

SHARED_LIBS=	gsm	1.0

CATEGORIES=	audio

HOMEPAGE=	https://www.quut.com/gsm/
SITES=		${HOMEPAGE}

# ISC-like
PERMIT_PACKAGE=	Yes

WANTLIB += c

DEBUG_PACKAGES=	${BUILD_PACKAGES}

MAKE_FLAGS=	CC="${CC}" DEBUG="${CFLAGS}" LDINC='-L$$(LIB)' \
		LIBgsm_VERSION=${LIBgsm_VERSION}

FAKE_FLAGS=	INSTALL_ROOT="${WRKINST}${PREFIX}"

NO_TEST=	Yes

post-install:
	ln -s toast.1 ${PREFIX}/man/man1/tcat.1
	ln -s toast.1 ${PREFIX}/man/man1/untoast.1

.include <bsd.port.mk>
