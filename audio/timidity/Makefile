# $OpenBSD: Makefile,v 1.47 2017/08/02 15:21:48 bcallah Exp $

COMMENT=	MIDI to WAV renderer and player

V=		2.13.2
DISTNAME=	TiMidity++-${V}
PKGNAME=	timidity-${V}
REVISION=	6
CATEGORIES=	audio

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=timidity/}
MASTER_SITES0=	https://devio.us/~bcallah/source/
TIINS=		TimGM6mb-20170802.tar.gz
DISTFILES=	${TIINS}:0 ${DISTNAME}.tar.gz

HOMEPAGE=	http://timidity.sourceforge.net/
MAINTAINER=	Brian Callahan <bcallah@openbsd.org>

# timidity: GPLv2+
# TimGM6mb: https://musescore.org/en/handbook/soundfonts#list
#	"License: GNU GPL, version 2; Courtesy of Tim Brechbill"
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m ncurses sndio

CONFIGURE_STYLE=autoconf automake
AUTOCONF_VERSION = 2.59
AUTOMAKE_VERSION = 1.9
CONFIGURE_ARGS= --enable-audio=sndio \
		--with-default-output=sndio \
		--enable-vt100 \
		--enable-ncurses \
		--enable-server \
		--with-default-path=${SYSCONFDIR}

FLAVORS=	gtk2 xaw
FLAVOR?=

.if ${FLAVOR:Mgtk2}
CONFIGURE_ARGS+=--enable-gtk
LIB_DEPENDS+=	devel/gettext \
		x11/gtk+2
WANTLIB+=	X11 Xcomposite Xcursor Xdamage Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		glib-2.0 gio-2.0 gobject-2.0 \
		gtk-x11-2.0 intl pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pthread z
.endif

.if ${FLAVOR:Mxaw}
CONFIGURE_ARGS+=--enable-xaw
WANTLIB+=	ICE SM X11 Xaw Xext Xmu Xt
.endif

.if ! ${FLAVOR:Mgtk2} && ! ${FLAVOR:Mxaw}
CONFIGURE_ARGS+=--without-x
.endif

USE_GMAKE=	Yes
NO_TEST=	Yes

WRKDIST=	${WRKDIR}
WRKSRC=		${WRKDIR}/${DISTNAME}

post-patch:
	cp ${FILESDIR}/sndio_a.c \
		${WRKSRC}/timidity/sndio_a.c
	cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} aclocal -I autoconf

pre-configure:
	cd ${WRKSRC}; AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} automake \
		--foreign --add-missing --copy

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/timidity/TimGM6mb
	${INSTALL_DATA} ${WRKDIST}/TimGM6mb/* \
		${PREFIX}/share/timidity/TimGM6mb
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/timidity
	${SUBST_CMD} -c -m 644 ${WRKDIR}/timidity.cfg \
		${PREFIX}/share/examples/timidity/timidity.cfg

.include <bsd.port.mk>
