# $OpenBSD: Makefile,v 1.39 2013/03/10 22:55:02 espie Exp $

COMMENT=	u-law to gsm encoding audio converter and library

DISTNAME=	gsm-1.0.13
REVISION=	0
CATEGORIES=	audio
HOMEPAGE=	http://www.quut.com/gsm/
MASTER_SITES=	${HOMEPAGE}
SHARED_LIBS=	gsm	1.0

# ISC-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MAKE_FLAGS=	CC="${CC}" DEBUG="${CFLAGS}" LDINC='-L$$(LIB)' \
		LIBgsm_VERSION=${LIBgsm_VERSION}

FAKE_FLAGS=	INSTALL_ROOT="${WRKINST}${PREFIX}"

WRKDIST=	${WRKDIR}/gsm-1.0-pl13
USE_GROFF =	Yes
NO_TEST=	Yes

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
MAKE_ENV+=	NO_SHARED_LIBS=Yes
.endif
