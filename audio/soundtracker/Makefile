# $OpenBSD: Makefile,v 1.19 2009/12/19 22:59:27 jakemsr Exp $

COMMENT=		music tracking tool for X11

DISTNAME=		soundtracker-0.6.8
CATEGORIES=		audio
HOMEPAGE=		http://www.soundtracker.org/

MAINTAINER=		Wilbern Cobb <wcobb@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi c glib gmodule gthread jpeg m png \
			pthread pthread-stubs sndio tiff xcb z

MASTER_SITES=		http://www.soundtracker.org/dl/v0.6/

LIB_DEPENDS=		gtk.>=1.2,gdk.>=1.2::x11/gtk+ \
			gdk_pixbuf.>=2::graphics/gdk-pixbuf \
			sndfile::audio/libsndfile

MODULES=		devel/gettext

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-alsa \
			--disable-sgi \
			--disable-oss \
			--disable-esd \
			--disable-sun \
			--disable-sdl \
			--disable-jack \
			--disable-gnome \
			--disable-splash
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -DDRIVER_SNDIO" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-lsndio"

DOCS=			FAQ NEWS README \
			doc/xi.txt doc/xm.txt doc/xp.txt

post-extract:
	@ln -s ${FILESDIR}/sndio-input.c ${WRKSRC}/app/drivers
	@ln -s ${FILESDIR}/sndio-output.c ${WRKSRC}/app/drivers

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/soundtracker
	cd ${WRKSRC} && \
	    ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/soundtracker

.include <bsd.port.mk>
