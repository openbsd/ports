# $OpenBSD: Makefile,v 1.7 2000/02/12 06:30:00 turan Exp $

DISTNAME=	dxpc-3.8.0
CATEGORIES=	net x11

MAINTAINER=	espie@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

MASTER_SITES=	ftp://ftp.x.org/contrib/utilities/ \
		ftp://sunsite.unc.edu/pub/Linux/X11/xutils/

LIB_DEPENDS=lzo:${PORTSDIR}/archivers/lzo
CXXFLAGS=	-O2 

NEED_VERSION=1.47

GNU_CONFIGURE=yes
CONFIGURE_ARGS=--with-lzo-lib=${PREFIX}

.include <bsd.port.mk>
