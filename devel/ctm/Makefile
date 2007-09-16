# $OpenBSD: Makefile,v 1.10 2007/09/16 02:52:58 merdely Exp $

COMMENT=		directory synchronization over mail

PKGNAME=		ctm-19960528
DISTNAME=		ctmkit
CATEGORIES=     	net devel
HOMEPAGE=		http://www.openbsd.org/ctm.html

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		http://www.nemeton.com.au/src/

FAKE_FLAGS=		PREFIX=${PREFIX} DESTDIR=${WRKINST}
WRKBUILD=		${WRKSRC}/ctm

.include <bsd.port.mk>
