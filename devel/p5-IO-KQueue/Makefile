# $OpenBSD: Makefile,v 1.3 2006/11/25 16:32:36 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		"perl interface to the BSD kqueue system call"

MODULES=		cpan
DISTNAME=		IO-KQueue-0.31
CATEGORIES=		devel

MAINTAINER=		Srebrenko Sehic <haver@insecure.dk>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

post-extract:
	@rm -f ${WRKDIST}/._*

.include <bsd.port.mk>
