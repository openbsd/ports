#$OpenBSD: Makefile,v 1.19 2011/07/15 11:10:40 naddy Exp $

COMMENT=	open source MSN Messenger clone

V=		0.98.4
DISTNAME=	amsn-$V-src
PKGNAME=	${DISTNAME:S/-src//}
CATEGORIES=	net

# CxImage requires access to internal png headers.
# This must be in sync with graphics/png
PNG_V=		1.5.4

HOMEPAGE=	http://www.amsn-project.net/

MAINTAINER=	Azwaw OUSADOU <bsdmaniak@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=project/amsn/amsn/${V}/}
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	ICE SM X11 m stdc++ z glib-2.0 gmodule-2.0 gobject-2.0 \
		gthread-2.0 gstbase-0.10 gstinterfaces-0.10 \
		gstreamer-0.10 xml2 jpeg png gstfarsight-0.10

LIB_DEPENDS=	graphics/jpeg \
		graphics/png \
		net/farsight2
RUN_DEPENDS+=	${MODTK_RUN_DEPENDS} \
		security/tcltls \
		x11/bwidget \
		devel/desktop-file-utils
BUILD_DEPENDS=	${MODTK_BUILD_DEPENDS} \
		security/tcltls \
		graphics/png:configure

MODTK_THREADED= Yes
MODULES=	devel/gettext \
		x11/tk

USE_GMAKE=	Yes
MAKE_FLAGS=	verbose=yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-libv4l \
		--disable-upnp \
		--with-tcl="${MODTCL_LIBDIR}" \
		--with-tk="${MODTK_LIBDIR}"

CONFIGURE_ENV+=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include \
		    -I${WRKDIR}/graphics/png/libpng-${PNG_V}" \
		LDFLAGS="-lm -L${LOCALBASE}/lib" \
		TK_INC_SPEC="${MODTK_INCDIR}/generic" \
		TCLSH="${MODTCL_BIN}"

WRKDIST=	${WRKDIR}/amsn-$V/

NO_REGRESS=	Yes # Generic tcl/tk tests.

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/amsn*
	@${MODTCL_WISH_ADJ} ${WRKSRC}/amsn

post-install:
.for a in amsn amsn-remote amsn-remote-CLI
	cd ${PREFIX}/bin && ln -s ../share/amsn/$a
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/amsn
	${INSTALL_DATA} ${WRKSRC}/{FAQ,README} ${PREFIX}/share/doc/amsn
	${INSTALL_DATA} ${WRKSRC}/docs/{FAQ,README}* ${PREFIX}/share/doc/amsn

.include <bsd.port.mk>
