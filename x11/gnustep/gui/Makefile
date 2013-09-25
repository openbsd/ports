# $OpenBSD: Makefile,v 1.32 2013/09/25 07:58:49 sthen Exp $

COMMENT=	GNUstep gui library

DISTNAME =	gnustep-gui-0.23.1
REVISION =	2

CATEGORIES=	devel

# needs to follow gnustep-back backend versioning
# cf. gnustep_backend_bundle() in ${WRKSRC}/Source/NSApplication.m
SHARED_LIBS =	gnustep-gui 0.23	# .0.23.1

HOMEPAGE=	http://www.gnustep.org/

WANTLIB += objc2 gnustep-base stdc++ flite flite_cmu_us_kal sndio
WANTLIB += tiff z ao jpeg gif png cups aspell c m pthread sndfile
WANTLIB += icudata icui18n icuuc flite_cmulex flite_usenglish

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
CONFIGURE_STYLE=autoconf gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lstdc++ -lm"
CONFIGURE_ARGS=	--with-x
USE_GROFF =	Yes

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
