# $OpenBSD: Makefile,v 1.11 2007/01/14 20:37:09 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	"quota manipulation module"

MODULES=	cpan
DISTNAME=	Quota-1.5.1
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	sysutils

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	rpcsvc

REGRESS_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
