COMMENT=	GSM audio codec library and converter

DISTNAME=	gsm-1.0.21
WRKDIST=	${WRKDIR}/gsm-1.0-pl21

SHARED_LIBS=	gsm	1.0

CATEGORIES=	audio

HOMEPAGE=	https://www.quut.com/gsm/
MASTER_SITES=	https://www.quut.com/gsm/

# ISC-like
PERMIT_PACKAGE=	Yes

WANTLIB += c

MAKE_FLAGS=	CC="${CC}" DEBUG="${CFLAGS}" LDINC='-L$$(LIB)' \
		LIBgsm_VERSION=${LIBgsm_VERSION}

FAKE_FLAGS=	INSTALL_ROOT="${WRKINST}${PREFIX}"

NO_TEST=	Yes

post-install:
	ln -s toast.1 ${PREFIX}/man/man1/tcat.1
	ln -s toast.1 ${PREFIX}/man/man1/untoast.1

.include <bsd.port.mk>
