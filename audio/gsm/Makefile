# $OpenBSD: Makefile,v 1.15 2000/03/24 22:11:34 espie Exp $

DISTNAME=       gsm-1.0.10
CATEGORIES=	audio
NEED_VERSION=	1.191
MASTER_SITES=	ftp://ftp.cs.tu-berlin.de/pub/local/kbs/tubmik/gsm/

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

WRKDIST=         ${WRKDIR}/gsm-1.0-pl10

post-install:
	@ln -sf ${PREFIX}/man/man1/toast.1 ${PREFIX}/man/man1/untoast.1
	@ln -sf ${PREFIX}/man/man1/toast.1 ${PREFIX}/man/man1/tcat.1
	@${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS)
MAKE_ENV+= NO_SHARED_LIBS=yes
.endif
