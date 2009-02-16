# $OpenBSD: Makefile,v 1.9 2009/02/16 00:42:53 ajacoutot Exp $

COMMENT=		GNOME speech module

GNOME_PROJECT=		gnome-speech
GNOME_VERSION=		0.4.25
SHARED_LIBS +=  gnomespeech          0.1      # .7.1

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ORBit-2 ORBitCosNaming-2 c glib-2.0 gmodule-2.0 gobject-2.0 \
		gthread-2.0 pcre pthread

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		espeak::audio/espeak \
			bonobo-2,bonobo-activation::x11/gnome/libbonobo
RUN_DEPENDS=		::audio/festival/core

USE_X11=		Yes
DESKTOP_FILES=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-scrollkeeper \
			--with-festival \
			--with-espeak-dir="${LOCALBASE}" \
			--without-speech-dispatcher
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
