COMMENT=	"graphical networked AD&D style game"

VERSION=	1.2.1
DISTNAME=	crossfire-client-${VERSION}
CATEGORIES=	games x11
NEED_VERSION=	1.522

HOMEPAGE=	http://crossfire.real-time.com/

MAINTAINER=	Lurene Grenier <lurene@daemonkitty.net>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=crossfire/}

FLAVORS=		gnome
FLAVOR?=		

LIB_DEPENDS=   	gtk.1.2::x11/gtk+ \
	        png.1::graphics/png \
		SDL::devel/sdl

.if ${FLAVOR:L:Mgnome}
LIB_DEPENDS+=	ORBit.5,IIOP,ORBitCosNaming,ORBitutil::devel/ORBit \
		gnome.36::x11/gnome/libs
SED_PLIST+=	-e '/%%GNOME%%/r${PKGDIR}/PFRAG.gnome.shared' -e '//d'
.else
CONFIGURE_ARGS=	--disable-gnome	
SED_PLIST+=	-e '/%%GNOME%%/d' 
.endif

USE_X11=		Yes
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC} ${WRKSRC}/utils
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
