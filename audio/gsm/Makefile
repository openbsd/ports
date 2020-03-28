# $OpenBSD: Makefile,v 1.51 2020/03/28 15:00:31 sthen Exp $

COMMENT=	GSM audio codec library and converter

DISTNAME=	gsm-1.0.19
WRKDIST=	${WRKDIR}/${DISTNAME:C/\.([0-9]*)$/-pl\1/}

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
