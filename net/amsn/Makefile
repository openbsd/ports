#$OpenBSD: Makefile,v 1.7 2009/08/10 06:33:43 kili Exp $

COMMENT=	open source MSN Messenger clone

DISTNAME=	amsn-0.97.2
PKGNAME=	${DISTNAME}p2
CATEGORIES=	net

HOMEPAGE=	http://www.amsn-project.net/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=amsn/}
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	ICE SM X11 m pthread-stubs stdc++ xcb z

LIB_DEPENDS=	jpeg::graphics/jpeg \
		png::graphics/png
RUN_DEPENDS+=	${MODTK_RUN_DEPENDS} \
		::security/tcltls \
		::x11/bwidget \
		:desktop-file-utils-*:devel/desktop-file-utils
BUILD_DEPENDS=	${MODTK_BUILD_DEPENDS} \
		::security/tcltls

MODULES=	x11/tk

USE_GMAKE=	Yes
MAKE_FLAGS=	verbose=yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-tcl=${MODTCL_LIBDIR} \
		--with-tk=${MODTK_LIBDIR}

CONFIGURE_ENV= 	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-lm -L${LOCALBASE}/lib -fPIC" \
		TK_INC_SPEC="${MODTK_INCDIR}/generic" \
		TCLSH="${MODTCL_BIN}"

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/amsn*

post-install:
.for a in amsn amsn-remote amsn-remote-CLI
	cd ${PREFIX}/bin && ln -s ../share/amsn/$a
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/amsn
	${INSTALL_DATA} ${WRKSRC}/{FAQ,README} ${PREFIX}/share/doc/amsn
	${INSTALL_DATA} ${WRKSRC}/docs/{FAQ,README}* ${PREFIX}/share/doc/amsn

.include <bsd.port.mk>
