# $OpenBSD: Makefile,v 1.63 2004/08/10 09:38:34 xsa Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"Gtk AIM, ICQ, IRC, Jabber, MSN, Yahoo, SILC and Zephyr client"

DISTNAME=	gaim-0.79
CATEGORIES=	net

HOMEPAGE=	http://gaim.sourceforge.net/

MAINTAINER=	Brad Smith <brad@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gaim/}

MODULES=	devel/gettext

LIB_DEPENDS+=	gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 \
		startup-notification-1.0.0::devel/startup-notification \
		silc::devel/silc-toolkit
BUILD_DEPENDS+=	:pkgconfig-*:devel/pkgconfig

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-gevolution \
		 --disable-gnutls \
		 --disable-nas \
		 --disable-nss \
		 --disable-perl \
		 --disable-tcl \
		 --disable-tk \
		 --enable-openssl
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/silc -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=	audio debug gtkspell
FLAVOR?=	

.if ${FLAVOR:L:Maudio}
LIB_DEPENDS+=	audiofile::devel/libaudiofile \
		ao.3::audio/libao
.else
CONFIGURE_ARGS+= --disable-audio
.endif

.if ${FLAVOR:L:Mdebug}
CFLAGS= -O0
CONFIGURE_ARGS+=--enable-debug

INSTALL_STRIP=
.endif

.if ${FLAVOR:L:Mgtkspell}
MODULES=	gcc3
MODGCC3_ARCHES=	powerpc
MODGCC3_LANGS=	C++
LIB_DEPENDS+=	gtkspell::textproc/gtkspell
.else
CONFIGURE_ARGS+=--disable-gtkspell
.endif

post-extract:
	@cp -f ${FILESDIR}/ssl-openssl.c ${WRKSRC}/plugins/ssl

.include <bsd.port.mk>
