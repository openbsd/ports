# $OpenBSD: Makefile,v 1.26 2011/04/10 18:02:55 jasper Exp $
#
# Many variables moved to ../Makefile.inc

COMMENT=		test-bed browser/authoring tool of the W3C

AMAYA_VERSION=		5.1
DISTNAME=		amaya-src-${AMAYA_VERSION}
PKGNAME=		amaya-${AMAYA_VERSION}
REVISION=		6

HOMEPAGE=		http://www.w3.org/Amaya/

FLAVORS=		motif gtk
FLAVOR?=		motif

WANTLIB += ICE SM X11 Xext Xt c expat m pthread-stubs xcb z

.if ${FLAVOR:L} == "gtk"

CONFIGURE_ARGS+=	--with-gtk=${LOCALBASE}
# I'm too lazy to write a proper imlib autoconf test.
LIB_DEPENDS+=		graphics/imlib

WANTLIB += Xi gdk gif glib gmodule gtk iconv intl jpeg png tiff gdk_imlib.>=19

.elif ${FLAVOR:L} == "motif"

WANTLIB += jpeg png Xm
LIB_DEPENDS+=		graphics/jpeg \
			graphics/png  \
			x11/openmotif
CONFIGURE_ARGS+=	--without-gtk \
			--with-motif-includes=${LOCALBASE}/include \
			--with-motif-libraries=${LOCALBASE}/lib

.else
ERRORS+=		"Fatal: Conflicting or missing flavor: '${FLAVOR}'"
.endif

WRKSRC=			${WRKDIR}/Amaya
WRKBUILD=		${WRKDIR}/Amaya/obj
WRKDIST=		${WRKDIR}

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
LIBTOOL_FLAGS=		--tag=disable-shared
AUTOCONF_VERSION=	2.13
CONFIGURE_STYLE=	autoconf dest
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/../libwww/config
CONFIGURE_SCRIPT=	../configure
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
			LIBS="-L${X11BASE}/lib -L${LOCALBASE}/lib"
CONFIGURE_ARGS+=	--without-graphic-libs
MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'

# We need to regenerate configure in two places, Amaya/ and libwww/
AUTOCONF_DIR=		${WRKSRC}
post-patch:
	@cd ${WRKDIST}/libwww && exec ${SETENV} \
		${AUTOCONF_ENV} ${AUTOCONF}

post-configure:
	@cd ${WRKBUILD} && cp Options.orig Options

NO_REGRESS=		Yes
	
pre-install:
	${STRIP} ${WRKBUILD}/bin/amaya
	${STRIP} ${WRKBUILD}/bin/print

post-install:
	cd ${PREFIX}/bin; rm amaya; \
		ln -s ${TRUEPREFIX}/Amaya/applis/bin/amaya

.include <bsd.port.mk>
