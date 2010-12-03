# $OpenBSD: Makefile,v 1.10 2010/12/03 11:44:32 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		perl interface to the BSD kqueue system call

MODULES=		cpan
DISTNAME=		IO-KQueue-0.32
REVISION=		2
CATEGORIES=		devel
USE_GROFF =		Yes

MAINTAINER=		Srebrenko Sehic <haver@insecure.dk>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

post-extract:
	@rm -f ${WRKDIST}/._*

.include <bsd.port.mk>
