# $OpenBSD: Makefile,v 1.45 2016/09/13 11:33:28 sthen Exp $

COMMENT=	GSM audio codec library and converter

DISTNAME=	gsm-1.0.15
WRKDIST=	${WRKDIR}/gsm-1.0-pl15

SHARED_LIBS=	gsm	1.0

CATEGORIES=	audio

HOMEPAGE=	http://www.quut.com/gsm/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# ISC-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	${HOMEPAGE}

MAKE_FLAGS=	CC="${CC}" DEBUG="${CFLAGS}" LDINC='-L$$(LIB)' \
		LIBgsm_VERSION=${LIBgsm_VERSION}

FAKE_FLAGS=	INSTALL_ROOT="${WRKINST}${PREFIX}"

NO_TEST=	Yes

.include <bsd.port.mk>
