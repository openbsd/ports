# $OpenBSD: Makefile,v 1.6 2006/02/10 16:36:37 naddy Exp $

COMMENT=		"library of assorted spiffy things"

DISTNAME=		libast-0.7
PKGNAME=		${DISTNAME}p1
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
