# $OpenBSD: Makefile,v 1.7 1998/10/06 22:50:46 marc Exp $
#

DISTNAME=       gsm-1.0.10
CATEGORIES=	audio

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
