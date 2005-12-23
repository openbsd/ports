# $OpenBSD: Makefile,v 1.31 2005/12/23 16:59:13 espie Exp $

COMMENT=	"u-law to gsm encoding audio converter and library"

DISTNAME=	gsm-1.0.10
PKGNAME=	${DISTNAME}p0
CATEGORIES=	audio
MASTER_SITES=	ftp://ftp.cs.tu-berlin.de/pub/local/kbs/tubmik/gsm/
SHARED_LIBS=	gsm	1.0

# Missing redistribution terms in license
PERMIT_PACKAGE_CDROM=	"no redistribution"
PERMIT_PACKAGE_FTP=	"no redistribution"
PERMIT_DISTFILES_CDROM=	"no redistribution"
PERMIT_DISTFILES_FTP=	"no redistribution"
WANTLIB=		c

MAKE_FLAGS=	CC="${CC}" DEBUG="${CFLAGS}" LDINC='-L$$(LIB)' \
		LIBgsm_VERSION=${LIBgsm_VERSION}

FAKE_FLAGS=	${MAKE_FLAGS} INSTALL_ROOT="${WRKINST}${PREFIX}"

WRKDIST=	${WRKDIR}/gsm-1.0-pl10
NO_REGRESS=	Yes

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
MAKE_ENV+=	NO_SHARED_LIBS=Yes
.endif
