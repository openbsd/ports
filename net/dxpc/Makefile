# $OpenBSD: Makefile,v 1.22 2004/12/16 00:31:21 alek Exp $

COMMENT=	"X11 over a low bandwidth link"
VERSION=	3.8.2
DISTNAME=	dxpc-${VERSION}
CATEGORIES=	net x11

MAINTAINER=	Marc Espie <espie@openbsd.org>

#		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++

MASTER_SITES=	http://www.vigor.nu/dxpc/${VERSION}/
HOMEPAGE=	http://www.vigor.nu/dxpc/

LIB_DEPENDS=	lzo::archivers/lzo

USE_X11=	Yes

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=--with-lzo-lib=${PREFIX}

NO_REGRESS=	Yes

.include <bsd.port.mk>
