# $OpenBSD: Makefile,v 1.8 2009/08/11 08:42:08 ajacoutot Exp $

COMMENT=		put clickable icons on the desktop

MAINTAINER=		D. Adam Karim <adam@akarsoft.com>

DISTNAME=		idesk-0.7.5
PKGNAME=		${DISTNAME}p1
CATEGORIES=		x11

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=idesk/}

HOMEPAGE=		http://idesk.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB=		ICE stdc++ c X11 Xrender Xau Xdmcp expat z m \
			SM Xft freetype fontconfig Xext pthread-stubs xcb

LIB_DEPENDS=		Imlib2.>=2::graphics/imlib2

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
