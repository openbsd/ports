# $OpenBSD: Makefile,v 1.7 2010/09/24 15:29:20 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		perl interface to the BSD kqueue system call

MODULES=		cpan
DISTNAME=		IO-KQueue-0.32
REVISION=		1
CATEGORIES=		devel

MAINTAINER=		Srebrenko Sehic <haver@insecure.dk>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

post-extract:
	@rm -f ${WRKDIST}/._*

.include <bsd.port.mk>
