# $OpenBSD: Makefile,v 1.11 2000/02/11 00:37:17 espie Exp $

DISTNAME=       gsm-1.0.10
CATEGORIES=	audio
MASTER_SITES=	ftp://ftp.cs.tu-berlin.de/pub/local/kbs/tubmik/gsm/
NEED_VERSION=	1.191

MAINTAINER=	angelos@openbsd.org

WRKDIST=         ${WRKDIR}/gsm-1.0-pl10

post-install:
	@${LN} -sf ${PREFIX}/man/man1/toast.1 ${PREFIX}/man/man1/untoast.1
	@${LN} -sf ${PREFIX}/man/man1/toast.1 ${PREFIX}/man/man1/tcat.1
	@${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS)
MAKE_ENV+= NO_SHARED_LIBS=yes
.endif
