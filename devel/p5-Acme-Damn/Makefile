# $OpenBSD: Makefile,v 1.2 2012/08/23 15:00:32 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		unbless perl objects

DISTNAME=		Acme-Damn-0.04
REVISION=		0
CATEGORIES=		devel

MODULES=		cpan
USE_GROFF=		Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

REGRESS_DEPENDS=	devel/p5-Test-Exception

.include <bsd.port.mk>
