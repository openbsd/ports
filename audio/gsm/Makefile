# $OpenBSD: Makefile,v 1.50 2020/02/03 20:40:38 sthen Exp $

COMMENT=	GSM audio codec library and converter

D=		gsm-1.0-pl18
DISTNAME=	${D:S/-pl/./}
WRKDIST=	${WRKDIR}/$D
REVISION=	0

SHARED_LIBS=	gsm	1.0

CATEGORIES=	audio

HOMEPAGE=	http://www.quut.com/gsm/

# ISC-like
PERMIT_PACKAGE=	Yes

WANTLIB += c

MASTER_SITES=	${HOMEPAGE}

MAKE_FLAGS=	CC="${CC}" DEBUG="${CFLAGS}" LDINC='-L$$(LIB)' \
		LIBgsm_VERSION=${LIBgsm_VERSION}

FAKE_FLAGS=	INSTALL_ROOT="${WRKINST}${PREFIX}"

NO_TEST=	Yes

.include <bsd.port.mk>
