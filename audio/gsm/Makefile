# $OpenBSD: Makefile,v 1.9 1999/04/01 02:57:51 brad Exp $

DISTNAME=       gsm-1.0.10
CATEGORIES=	audio

NEED_VERSION=	1.64

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	ftp://ftp.cs.tu-berlin.de/pub/local/kbs/tubmik/gsm/

WRKSRC=         ${WRKDIR}/gsm-1.0-pl10

post-install:
.if !defined(NO_INSTALL_MANPAGES)
	${LN} -sf ${PREFIX}/man/man1/toast.1 ${PREFIX}/man/man1/untoast.1
	${LN} -sf ${PREFIX}/man/man1/toast.1 ${PREFIX}/man/man1/tcat.1
.endif
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
