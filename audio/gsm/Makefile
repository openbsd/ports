# $OpenBSD: Makefile,v 1.47 2017/06/28 13:52:44 sthen Exp $

COMMENT=	GSM audio codec library and converter

D=		gsm-1.0-pl17
DISTNAME=	${D:S/-pl/./}
WRKDIST=	${WRKDIR}/$D

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
