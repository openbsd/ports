# $OpenBSD: Makefile,v 1.35 2009/04/05 19:09:32 kili Exp $

COMMENT=	u-law to gsm encoding audio converter and library

DISTNAME=	gsm-1.0.13
CATEGORIES=	audio
HOMEPAGE=	http://user.cs.tu-berlin.de/~jutta/toast.html
MASTER_SITES=	http://user.cs.tu-berlin.de/~jutta/gsm/
SHARED_LIBS=	gsm	1.0

# ISC-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MAKE_FLAGS=	CC="${CC}" DEBUG="${CFLAGS}" LDINC='-L$$(LIB)' \
		LIBgsm_VERSION=${LIBgsm_VERSION}

FAKE_FLAGS=	INSTALL_ROOT="${WRKINST}${PREFIX}"

WRKDIST=	${WRKDIR}/gsm-1.0-pl13
NO_REGRESS=	Yes

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
MAKE_ENV+=	NO_SHARED_LIBS=Yes
.endif
