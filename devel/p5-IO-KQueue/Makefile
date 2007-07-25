# $OpenBSD: Makefile,v 1.4 2007/07/25 20:16:17 simon Exp $

SHARED_ONLY=		Yes

COMMENT=		perl interface to the BSD kqueue system call

MODULES=		cpan
DISTNAME=		IO-KQueue-0.32
CATEGORIES=		devel

MAINTAINER=		Srebrenko Sehic <haver@insecure.dk>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

post-extract:
	@rm -f ${WRKDIST}/._*

.include <bsd.port.mk>
