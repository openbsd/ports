# $OpenBSD: Makefile,v 1.20 2000/09/16 15:22:45 brad Exp $

DISTNAME=       gsm-1.0.10
CATEGORIES=	audio
NEED_VERSION=	1.320
MASTER_SITES=	ftp://ftp.cs.tu-berlin.de/pub/local/kbs/tubmik/gsm/

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=         ${WRKDIR}/gsm-1.0-pl10

post-install:
	@cd ${PREFIX}/man/man1 && \
		ln -sf toast.1 untoast.1 && \
		ln -sf toast.1 tcat.1

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS)
MAKE_ENV=	NO_SHARED_LIBS=Yes
.endif
