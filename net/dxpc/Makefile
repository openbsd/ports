# $OpenBSD: Makefile,v 1.15 2000/10/22 15:42:57 espie Exp $

VERSION=	3.8.0
DISTNAME=	dxpc-${VERSION}
CATEGORIES=	net x11
NEED_VERSION=	1.309

MAINTAINER=	Marc Espie <espie@openbsd.org>

#		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.vigor.nu/dxpc/${VERSION}/ \
		ftp://ftp.x.org/contrib/utilities/ \
		ftp://sunsite.unc.edu/pub/Linux/X11/xutils/

LIB_DEPENDS=	lzo::archivers/lzo
HOMEPAGE=	http://www.vigor.nu/dxpc/

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=--with-lzo-lib=${PREFIX}

.include <bsd.port.mk>
