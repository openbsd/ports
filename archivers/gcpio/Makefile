# $OpenBSD: Makefile,v 1.5 2003/02/22 16:38:40 lebel Exp $

COMMENT=		"GNU copy-in/out (cpio)"

DISTNAME=		cpio-2.5
PKGNAME=		g${DISTNAME}
CATEGORIES=		archivers

MAINTAINER=		David Lebel <lebel@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNU:=cpio/}

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS=		--program-prefix="g"

.include <bsd.port.mk>
