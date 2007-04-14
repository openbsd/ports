# $OpenBSD: Makefile,v 1.10 2007/04/14 21:20:19 sturm Exp $

COMMENT=		"library of assorted spiffy things"

DISTNAME=		libast-0.7
PKGNAME=		${DISTNAME}p3
SHARED_LIBS +=	ast                  2.2      # .2.1
CATEGORIES=		devel

HOMEPAGE=		http://eterm.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE m SM freetype X11 Xau Xdmcp Xext z

MASTER_SITES=		http://www.eterm.org/download/

LIB_DEPENDS=		Imlib2.>=2::graphics/imlib2

USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
