# $OpenBSD: Makefile,v 1.9 2005/02/11 23:28:34 naddy Exp $

COMMENT=		"GNU copy-in/out (cpio)"

DISTNAME=		cpio-2.5
PKGNAME=		g${DISTNAME}p0
CATEGORIES=		archivers

# GPL/LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		${MASTER_SITE_GNU:=cpio/}

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS=		--program-prefix="g"

.include <bsd.port.mk>
