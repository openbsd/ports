# $OpenBSD: Makefile,v 1.27 2012/08/22 07:15:52 sebastia Exp $

COMMENT=	GNUstep gui library

DISTNAME =	gnustep-gui-0.22.0
REVISION =	1

CATEGORIES=	devel

# needs to follow gnustep-back backend versioning
# cf. gnustep_backend_bundle() in ${WRKSRC}/Source/NSApplication.m
SHARED_LIBS =	gnustep-gui 0.22	# .0.22.0

HOMEPAGE=	http://www.gnustep.org/

WANTLIB += objc2 gnustep-base asn1 crypto gssapi krb5 ssl stdc++
WANTLIB += tiff z ao jpeg ungif png cups aspell c m pthread sndfile
WANTLIB += icudata icui18n icuuc

MASTER_SITES=	${MASTER_SITE_GNUSTEP:=core/}

MODULES=	x11/gnustep
MODGNUSTEP_NEEDS_GUI=No

LIB_DEPENDS=	audio/libao \
		audio/libsndfile \
		graphics/jpeg \
		graphics/libungif \
		graphics/png \
		graphics/tiff \
		print/cups,-libs \
		textproc/aspell/core

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib -lstdc++ -lm -pthread"
CONFIGURE_ARGS=	--with-x
USE_GROFF =	Yes

LIBDIR =	lib/GNUstep/Libraries/gnustep-gui/Versions/${LIBgnustep-gui_VERSION}
SUBST_VARS +=	LIBDIR

MAKE_FLAGS +=	libgnustep-gui_INTERFACE_VERSION=${LIBgnustep-gui_VERSION}

post-install:
	${INSTALL_MAN} ${WRKSRC}/Documentation/make_services.1 \
		${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/Documentation/gopen.1 \
		${PREFIX}/man/man1

.include <bsd.port.mk>
