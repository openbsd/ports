# $OpenBSD: Makefile,v 1.55 2004/02/02 02:10:19 brad Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

DISTNAME=	gaim-0.75
PKGNAME=	${DISTNAME}p1
CATEGORIES=	net

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"Gtk AIM, ICQ, IRC, Jabber, MSN, Yahoo, and Zephyr client"
HOMEPAGE=	http://gaim.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gaim/}

MAINTAINER=	Brad Smith <brad@openbsd.org>

MODULES=	gettext

LIB_DEPENDS+=	gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 \
		startup-notification-1.0.0::devel/startup-notification
BUILD_DEPENDS+=	:pkgconfig-*:devel/pkgconfig

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-gnutls \
		 --disable-nas \
		 --disable-nss \
		 --disable-tcl \
		 --disable-tk \
		 --enable-openssl
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
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
LIB_DEPENDS+=	gtkspell::textproc/gtkspell
.else
CONFIGURE_ARGS+=--disable-gtkspell
.endif

post-extract:
	@cp -f ${FILESDIR}/ssl-openssl.c ${WRKSRC}/plugins/ssl

.include <bsd.port.mk>
