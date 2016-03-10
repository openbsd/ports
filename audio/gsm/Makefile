# $OpenBSD: Makefile,v 1.44 2016/03/10 23:05:53 naddy Exp $

COMMENT=	u-law to gsm encoding audio converter and library

DISTNAME=	gsm-1.0.14
WRKDIST=	${WRKDIR}/gsm-1.0-pl14

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
