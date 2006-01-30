# $OpenBSD: Makefile,v 1.29 2006/01/30 10:13:11 jsg Exp $

COMMENT=	"MIDI to WAV renderer and player"
DISTNAME=	TiMidity++-2.13.2
PKGNAME=	${DISTNAME:L:S/++//}
CATEGORIES=	audio

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=timidity/}
MASTER_SITES0=	ftp://ftp.kiarchive.ru/pub/misc/hardware/soundcard/gus/
TIINS=		goemon.tgz
DISTFILES=	${TIINS}:0 ${DISTNAME}.tar.gz

HOMEPAGE=	http://timidity.sourceforge.net/

# GPL, copyrighted patches in goemon patchset
PERMIT_PACKAGE_CDROM=   "copyrighted patches"
PERMIT_PACKAGE_FTP=     "copyrighted patches"
PERMIT_DISTFILES_CDROM= "copyrighted patches"
PERMIT_DISTFILES_FTP=   "copyrighted patches"
WANTLIB=		c m ncurses 

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	CFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS= --enable-audio=sun \
		--enable-vt100 \
		--enable-ncurses \
		--enable-server \
		--with-default-path=${SYSCONFDIR}

FLAVORS=	gtk2
FLAVOR?=

.if ${FLAVOR:L:Mgtk2}
CONFIGURE_ARGS+=--enable-gtk
MODULES=	devel/gettext
USE_X11=	Yes
LIB_DEPENDS+=	gdk-x11-2.0.0.11,gdk_pixbuf-2.0.0.11,gtk-x11-2.0.0.11::x11/gtk+2
BUILD_DEPENDS+=	:pkgconfig-*:devel/pkgconfig
WANTLIB+=	X11 Xext Xft Xrender atk-1.0.0.0 fontconfig freetype \
		glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 pango-1.0.0.0 \
		pangoft2-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0 
.else
CONFIGURE_ARGS+=--without-x
.endif

USE_GMAKE=	Yes
NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}
WRKSRC=		${WRKDIR}/${DISTNAME}
DATA_DIRS=	gsdrum00 gsdrum08 gsdrum40

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/timidity/goemon
	${INSTALL_DATA} ${WRKDIST}/goemon/*.* ${PREFIX}/share/timidity/goemon
.for DDIR in ${DATA_DIRS}
	${INSTALL_DATA_DIR} ${PREFIX}/share/timidity/goemon/${DDIR}
	${INSTALL_DATA} ${WRKDIST}/goemon/${DDIR}/*.* \
	    ${PREFIX}/share/timidity/goemon/${DDIR}
.endfor
	${INSTALL_DATA} ${WRKDIST}/goemon.cfg ${PREFIX}/share/timidity/goemon
	@echo -e "dir ${TRUEPREFIX}/share/timidity/goemon\nsource goemon.cfg" \
	    >> ${WRKDIR}/timidity.cfg
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/timidity
	${INSTALL_DATA} ${WRKDIR}/timidity.cfg ${PREFIX}/share/examples/timidity

.include <bsd.port.mk>
