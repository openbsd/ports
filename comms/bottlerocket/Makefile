# $OpenBSD: Makefile,v 1.5 2010/01/23 10:29:45 landry Exp $

COMMENT=	X.10 firecracker interface

DISTNAME=	bottlerocket-0.04c
PKGNAME=	${DISTNAME}p0
CATEGORIES=	comms

HOMEPAGE=	http://mlug.missouri.edu/~tymm/
MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE=gnu

SEPARATE_BUILD= simple

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

NO_REGRESS=	Yes

.include <bsd.port.mk>
