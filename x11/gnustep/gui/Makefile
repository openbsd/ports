COMMENT=	GNUstep gui library

GH_TAGNAME=     0.31.1
GH_ACCOUNT=     gnustep
GH_PROJECT=     libs-gui
DISTNAME=       gnustep-gui-${GH_TAGNAME}

CATEGORIES=	devel

# needs to follow gnustep-back backend versioning
# cf. gnustep_backend_bundle() in ${WRKSRC}/Source/NSApplication.m
SHARED_LIBS =	gnustep-gui 0.33

HOMEPAGE=	http://www.gnustep.org/

WANTLIB += ao aspell cups flite flite_cmu_us_kal flite_cmulex
WANTLIB += flite_usenglish gif jpeg png sndfile sndio
WANTLIB += ${LIBCXX} tiff c icudata icui18n icuuc z

#SITES=	${SITE_GNUSTEP:=core/}
SITES=	https://github.com/gnustep/libs-gui/releases/download/gui-0_31_1/

MODULES=	x11/gnustep
MODGNUSTEP_NEEDS_GUI=No

LIB_DEPENDS=	audio/flite \
		audio/libao \
		audio/libsndfile \
		graphics/jpeg \
		graphics/giflib \
		graphics/png \
		graphics/tiff \
		print/cups,-libs \
		textproc/aspell/core

WRKDIST=	${WRKDIR}/${DISTNAME}

AUTOCONF_VERSION = 2.69
CONFIGURE_STYLE=autoconf
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lstdc++ -lm"
CONFIGURE_ARGS=	--with-x \
		--enable-speech

LIBDIR =	lib/GNUstep/Libraries/gnustep-gui/Versions/${GH_TAGNAME:R}
SUBST_VARS +=	LIBDIR

MAKE_FLAGS +=	libgnustep-gui_INTERFACE_VERSION=${LIBgnustep-gui_VERSION}

post-patch:
	${SUBST_CMD} ${WRKSRC}/configure.ac

post-install:
	${INSTALL_MAN} ${WRKSRC}/Documentation/make_services.1 \
		${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/Documentation/gopen.1 \
		${PREFIX}/man/man1

.include <bsd.port.mk>
