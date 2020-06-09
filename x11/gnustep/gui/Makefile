# $OpenBSD: Makefile,v 1.56 2020/06/09 21:12:17 sebastia Exp $

COMMENT=	GNUstep gui library

DISTNAME =	gnustep-gui-0.28.0

CATEGORIES=	devel

# needs to follow gnustep-back backend versioning
# cf. gnustep_backend_bundle() in ${WRKSRC}/Source/NSApplication.m
SHARED_LIBS =	gnustep-gui 0.30

HOMEPAGE=	http://www.gnustep.org/

WANTLIB += ao aspell cups flite flite_cmu_us_kal flite_cmulex
WANTLIB += flite_usenglish gif jpeg png sndfile sndio
WANTLIB += ${LIBCXX} tiff c icudata icui18n icuuc z

MASTER_SITES=	${MASTER_SITE_GNUSTEP:=core/}

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

AUTOCONF_VERSION = 2.69
CONFIGURE_STYLE=autoconf
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lstdc++ -lm"
CONFIGURE_ARGS=	--with-x \
		--enable-speech

LIBDIR =	lib/GNUstep/Libraries/gnustep-gui/Versions/${LIBgnustep-gui_VERSION}
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
