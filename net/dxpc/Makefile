# $OpenBSD: Makefile,v 1.19 2003/03/01 03:21:20 sturm Exp $

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

MASTER_SITES=	http://ftp.ecrc.de/pub/netsw/x11/extensions/dxpc/ \
		http://www.netsw.org/x11/extensions/dxpc/
# domain is gone
#		http://www.vigor.nu/dxpc/${VERSION}/
#HOMEPAGE=	http://www.vigor.nu/dxpc/

LIB_DEPENDS=	lzo::archivers/lzo

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=--with-lzo-lib=${PREFIX}

NO_REGRESS=	Yes

.include <bsd.port.mk>
