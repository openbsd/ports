# $OpenBSD: Makefile,v 1.11 2000/03/05 18:30:37 espie Exp $

VERSION=	3.8.0
DISTNAME=	dxpc-${VERSION}
CATEGORIES=	net x11
NEED_VERSION=	1.223

MAINTAINER=	espie@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.vigor.nu/dxpc/${VERSION}/ \
		ftp://ftp.x.org/contrib/utilities/ \
		ftp://sunsite.unc.edu/pub/Linux/X11/xutils/

LIB_DEPENDS=	lzo:archivers/lzo
HOMEPAGE=	http://www.vigor.nu/dxpc/

GNU_CONFIGURE=Yes
CONFIGURE_ARGS=--with-lzo-lib=${PREFIX}

.include <bsd.port.mk>
