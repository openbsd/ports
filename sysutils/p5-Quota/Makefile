# $OpenBSD: Makefile,v 1.17 2010/12/03 11:46:47 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	quota manipulation module

MODULES=	cpan
DISTNAME=	Quota-1.5.1
REVISION=	3
CATEGORIES=	sysutils
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	rpcsvc

REGRESS_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
