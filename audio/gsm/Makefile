# $OpenBSD: Makefile,v 1.17 2000/06/10 17:39:15 espie Exp $

DISTNAME=       gsm-1.0.10
CATEGORIES=	audio
NEED_VERSION=	1.230
MASTER_SITES=	ftp://ftp.cs.tu-berlin.de/pub/local/kbs/tubmik/gsm/

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=         ${WRKDIR}/gsm-1.0-pl10

post-install:
	@ln -sf ${TRUEPREFIX}/man/man1/toast.1 ${PREFIX}/man/man1/untoast.1
	@ln -sf ${TRUEPREFIX}/man/man1/toast.1 ${PREFIX}/man/man1/tcat.1

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS)
MAKE_ENV+= NO_SHARED_LIBS=yes
.endif
