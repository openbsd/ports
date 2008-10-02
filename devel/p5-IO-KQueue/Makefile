# $OpenBSD: Makefile,v 1.5 2008/10/02 20:35:09 simon Exp $

SHARED_ONLY=		Yes

COMMENT=		perl interface to the BSD kqueue system call

MODULES=		cpan
DISTNAME=		IO-KQueue-0.32
PKGNAME=		p5-${DISTNAME}p0
CATEGORIES=		devel

MAINTAINER=		Srebrenko Sehic <haver@insecure.dk>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

post-extract:
	@rm -f ${WRKDIST}/._*

.include <bsd.port.mk>
