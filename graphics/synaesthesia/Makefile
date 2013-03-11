# $OpenBSD: Makefile,v 1.18 2013/03/11 11:10:55 espie Exp $

COMMENT=		visual sound representation

DISTNAME=		synaesthesia-2.1
REVISION =		1
CATEGORIES=     	graphics x11

HOMEPAGE=		http://yoyo.cc.monash.edu.au/~pfh/synaesthesia.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 c m ossaudio pthread stdc++ SDL

MASTER_SITES=		http://yoyo.cc.monash.edu.au/~pfh/

# esound default so it works with mpg123-esd and not just CDs
FLAVORS=	esd
FLAVOR?=	esd

LIB_DEPENDS=		devel/sdl

SEPARATE_BUILD=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

.if ${FLAVOR:Mesd}
LIB_DEPENDS+=		audio/esound
CONFIGURE_ARGS+=	--with-esound
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include"
WANTLIB +=		esd>=2
.else
CONFIGURE_ARGS+=	--disable-esound
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/synaesthesia ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/synaesthesia
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/synaesthesia

.include <bsd.port.mk>
