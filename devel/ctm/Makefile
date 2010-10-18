# $OpenBSD: Makefile,v 1.13 2010/10/18 17:47:52 espie Exp $

COMMENT=		directory synchronization over mail

PKGNAME=		ctm-19960528p0
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
USE_GROFF =	Yes

.include <bsd.port.mk>
