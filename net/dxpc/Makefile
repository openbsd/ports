# $OpenBSD: Makefile,v 1.18 2002/10/28 01:38:45 naddy Exp $

COMMENT=	"X11 over a low bandwidth link"
VERSION=	3.8.1
DISTNAME=	dxpc-${VERSION}
CATEGORIES=	net x11

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

NO_REGRESS=	Yes

.include <bsd.port.mk>
