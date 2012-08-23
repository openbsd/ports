# $OpenBSD: Makefile,v 1.12 2012/08/23 15:05:15 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		perl interface to the BSD kqueue system call

MODULES=		cpan
DISTNAME=		IO-KQueue-0.34
REVISION=		0
CATEGORIES=		devel

MAINTAINER=		Srebrenko Sehic <haver@insecure.dk>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
