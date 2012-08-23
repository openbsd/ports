# $OpenBSD: Makefile,v 1.18 2012/08/23 15:52:47 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	quota manipulation module

MODULES=	cpan
DISTNAME=	Quota-1.5.1
REVISION=	4
CATEGORIES=	sysutils
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c rpcsvc

REGRESS_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
