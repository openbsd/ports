# $OpenBSD: Makefile,v 1.5 2001/04/01 23:54:42 naddy Exp $

COMMENT=		"directory synchronization over mail"

PKGNAME=		ctm-19960528
DISTNAME=		ctmkit
CATEGORIES=     	net devel
NEED_VERSION=		1.363
HOMEPAGE=		http://www.openbsd.org/ctm.html

MAINTAINER=		ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.nemeton.com.au/src/

FAKE_FLAGS=		PREFIX=${PREFIX} DESTDIR=${WRKINST}
WRKBUILD=		${WRKSRC}/ctm

.include <bsd.port.mk>
