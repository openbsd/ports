# $OpenBSD: Makefile,v 1.8 2004/11/21 12:50:32 espie Exp $

COMMENT=		"GNU copy-in/out (cpio)"

DISTNAME=		cpio-2.5
PKGNAME=		g${DISTNAME}
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
