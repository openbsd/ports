# $OpenBSD: Makefile,v 1.10 2006/08/02 09:36:20 espie Exp $

COMMENT=	"UAE amiga emulator"
DISTNAME=	uae-0.8.21
CATEGORIES=	emulators x11

MASTER_SITES=	ftp://ftp.freiburg.linux.de/pub/uae/sources/develop/

HOMEPAGE=	http://www.freiburg.linux.de/~uae

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xi Xxf86dga Xxf86vm c m

USE_X11=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-dga --enable-vidmode --disable-ui

# Workaround compiler bug on hppa: cc1plus spinning forever
.if ${MACHINE_ARCH} == "hppa"
CFLAGS+=	-O0
.endif

MODULES=	devel/gettext
LIB_DEPENDS+=	glib.>=1.2,gmodule.>=1.2::devel/glib \
		gtk.>=1.2,gdk.>=1.2::x11/gtk+

NO_REGRESS=	Yes

DOCS=		COMPATIBILITY CREDITS FAQ NEWS README README.PROGRAMMERS

FILES=		mousehack timehack transdisk transrom uae-control \
		uae-control.info uae_rcli uaectrl

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/uae ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/readdisk ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/uae/amiga
	cd ${WRKSRC}/docs && ( \
	  ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/uae; \
	  ${INSTALL_DATA} unix/README ${PREFIX}/share/uae/README.unix )
	cd ${WRKSRC}/amiga && ${INSTALL_DATA} ${FILES} \
	  ${PREFIX}/share/uae/amiga

.include <bsd.port.mk>
