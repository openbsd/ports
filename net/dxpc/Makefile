# $OpenBSD: Makefile,v 1.8 2000/02/15 05:04:52 turan Exp $

DISTNAME=	dxpc-3.8.0
CATEGORIES=	net x11

MAINTAINER=	espie@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MASTER_SITES=	ftp://ftp.x.org/contrib/utilities/ \
		ftp://sunsite.unc.edu/pub/Linux/X11/xutils/

LIB_DEPENDS=lzo:${PORTSDIR}/archivers/lzo
CXXFLAGS=	-O2 

NEED_VERSION=1.47

GNU_CONFIGURE=yes
CONFIGURE_ARGS=--with-lzo-lib=${PREFIX}

.include <bsd.port.mk>
