# $OpenBSD: Makefile,v 1.18 2017/10/23 17:11:05 sthen Exp $

COMMENT=		put clickable icons on the desktop

MAINTAINER=		D. Adam Karim <adam@akarsoft.com>

DISTNAME=		idesk-0.7.5
REVISION =		5
CATEGORIES=		x11

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=idesk/}

HOMEPAGE=		http://idesk.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB=		ICE ${COMPILER_LIBCXX} c X11 Xrender Xau Xdmcp expat z m Imlib2 \
			SM Xft freetype fontconfig Xext xcb

LIB_DEPENDS=		graphics/imlib2

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
