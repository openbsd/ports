# $OpenBSD: Makefile,v 1.11 2009/08/10 06:31:45 kili Exp $

COMMENT=		visual sound representation

DISTNAME=		synaesthesia-2.1
PKGNAME=		${DISTNAME}p0
CATEGORIES=     	graphics x11

HOMEPAGE=		http://yoyo.cc.monash.edu.au/~pfh/synaesthesia.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext c m ossaudio pthread pthread-stubs \
			stdc++ usbhid xcb

MASTER_SITES=		http://yoyo.cc.monash.edu.au/~pfh/

# esound default so it works with mpg123-esd and not just CDs
FLAVORS=	esd
FLAVOR?=	esd

LIB_DEPENDS=		SDL.::devel/sdl

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

.if ${FLAVOR:L:Mesd}
LIB_DEPENDS+=	esd.>=2::audio/esound
CONFIGURE_ARGS+=	--with-esound
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include"
.else
CONFIGURE_ARGS+=	--disable-esound
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/synaesthesia ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/synaesthesia
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/synaesthesia

.include <bsd.port.mk>
