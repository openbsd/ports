# $OpenBSD: Makefile,v 1.9 2002/10/29 01:30:41 naddy Exp $
#
# Many variables moved to ../Makefile.inc

COMMENT=		"test-bed browser/authoring tool of the W3C"

AMAYA_VERSION=		5.1
DISTNAME=		amaya-src-${AMAYA_VERSION}
PKGNAME=		amaya-${AMAYA_VERSION}

HOMEPAGE=		http://www.w3.org/Amaya/

FLAVORS=		motif gtk
FLAVOR?=		motif

LIB_DEPENDS+=	 	expat.2::textproc/expat

.if ${FLAVOR:L} == "gtk"

CONFIGURE_ARGS+=	--with-gtk=${LOCALBASE}
# I'm too lazy to write a proper imlib autoconf test.
LIB_DEPENDS+=		gdk_imlib.19::graphics/imlib

.elif ${FLAVOR:L} == "motif"

USE_MOTIF=		any
LIB_DEPENDS+=		jpeg.62::graphics/jpeg \
			png.2::graphics/png 
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
CONFIGURE_STYLE=	autoconf dest
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/../libwww/config
CONFIGURE_SCRIPT=	../configure
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LIBS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=	--without-graphic-libs

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
