# $OpenBSD: Makefile,v 1.21 2000/09/16 16:34:38 brad Exp $

DISTNAME=       gsm-1.0.10
CATEGORIES=	audio
NEED_VERSION=	1.320
MASTER_SITES=	ftp://ftp.cs.tu-berlin.de/pub/local/kbs/tubmik/gsm/

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" DEBUG="${CFLAGS}" LDINC='-L$$(LIB)'
FAKE_FLAGS+=	${MAKE_FLAGS} INSTALL_ROOT="${WRKINST}${PREFIX}"

WRKDIST=         ${WRKDIR}/gsm-1.0-pl10

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS)
MAKE_ENV=	NO_SHARED_LIBS=Yes
.endif
