# $OpenBSD: Makefile,v 1.51 2013/04/02 14:09:23 naddy Exp $

SHARED_ONLY=		Yes

COMMENT-main=		extended module player
COMMENT-xmms=		extended module player plugin for XMMS

DISTNAME=		xmp-3.5.0
PKGNAME-main=		${DISTNAME}
REVISION-main=		0
PKGNAME-xmms=		xmms-${DISTNAME}
CATEGORIES=		audio

HOMEPAGE=		http://xmp.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xmp/}

MULTI_PACKAGES=		-main -xmms

MODULES=		devel/gettext

USE_GMAKE=		Yes
USE_GROFF=		Yes

NO_TEST=		Yes

LIB_DEPENDS-main=	# empty
RUN_DEPENDS-main=	# empty
WANTLIB-main=		c m sndio

LIB_DEPENDS-xmms=	audio/xmms
WANTLIB-xmms=		X11 Xext Xi gdk glib gmodule gtk m xmms ${MODGETTEXT_WANTLIB}

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/scripts
CONFIGURE_ARGS+=	--disable-alsa \
			--disable-arts \
			--disable-audacious-plugin \
			--disable-esd \
			--disable-oss \
			--disable-pulseaudio \
			--enable-xmms-plugin
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

MAKE_FLAGS+=		V=1

FAKE_FLAGS=		DESTDIR=${WRKINST} \
			SYSCONFDIR=${PREFIX}/share/examples/xmp

.include <bsd.port.mk>
