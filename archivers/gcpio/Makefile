# $OpenBSD: Makefile,v 1.2 2001/04/20 17:35:33 brad Exp $

COMMENT=		"GNU copy-in/out (cpio)"

DISTNAME=		cpio-2.4.2
PKGNAME=		g${DISTNAME}
CATEGORIES=		archivers
NEED_VERSION=		1.384

MAINTAINER=		David Lebel <lebel@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	cpio

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS=		--program-prefix="g"

.include <bsd.port.mk>
