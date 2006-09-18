# $OpenBSD: Makefile,v 1.2 2006/09/18 10:21:48 espie Exp $

COMMENT=		"put clickable icons on the desktop"

MAINTAINER=		D. Adam Karim <adam@akarsoft.com>

DISTNAME=		idesk-0.7.4
CATEGORIES=		x11

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=idesk/}

HOMEPAGE=		http://idesk.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB=		ICE stdc++ c X11 Xrender m SM Xft freetype \
			fontconfig Xext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		Imlib2.>=2::graphics/imlib2

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
