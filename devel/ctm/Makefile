# $OpenBSD: Makefile,v 1.16 2011/06/23 22:50:27 naddy Exp $

COMMENT=		directory synchronization over mail

PKGNAME=		ctm-19960528
REVISION=		1
DISTNAME=		ctmkit
CATEGORIES=     	net devel
HOMEPAGE=		http://www.openbsd.org/ctm.html

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		http://www.nemeton.com.au/src/

FAKE_FLAGS=		PREFIX=${PREFIX}
WRKBUILD=		${WRKSRC}/ctm

.include <bsd.port.mk>
