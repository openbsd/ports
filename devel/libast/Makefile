# $OpenBSD: Makefile,v 1.5 2006/02/09 07:28:22 steven Exp $

COMMENT=		"library of assorted spiffy things"

DISTNAME=		libast-0.7
PKGNAME=		${DISTNAME}p0
SHARED_LIBS=		ast 2.2
CATEGORIES=		devel

HOMEPAGE=		http://eterm.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE m SM freetype X11 Xext

MASTER_SITES=		http://www.eterm.org/download/

LIB_DEPENDS=		Imlib2.2::graphics/imlib2 \
			ltdl::devel/libtool,-ltdl

USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
