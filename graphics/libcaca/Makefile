# $OpenBSD: Makefile,v 1.5 2006/06/06 12:56:00 aanriot Exp $

COMMENT=		"color ascii art library"
DISTNAME=		libcaca-0.9
PKGNAME=		${DISTNAME}p1
CATEGORIES=		graphics

MAINTAINER=		Robert Nagy <robert@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c ncurses m

HOMEPAGE=		http://sam.zoy.org/projects/libcaca/
MASTER_SITES=		${HOMEPAGE}

FLAVORS=		no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=	--disable-x11 \
			--disable-imlib2
.else
LIB_DEPENDS=    	Imlib2.1::graphics/imlib2
USE_X11=		Yes
WANTLIB+=		X11 Xext freetype
.endif

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+=	--disable-doc --disable-slang
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autotools

.include <bsd.port.mk>
