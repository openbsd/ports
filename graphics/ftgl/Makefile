# $OpenBSD: Makefile,v 1.22 2019/07/12 20:46:58 sthen Exp $

COMMENT =		font rendering library for OpenGL applications

V =			2.1.3
DISTNAME =		ftgl-$V-rc5
PKGNAME =		ftgl-$Vrc5
REVISION =		8
EPOCH =			0
SHARED_LIBS =		ftgl	0.0	# 2.1
CATEGORIES =		graphics

HOMEPAGE =		http://ftgl.wiki.sourceforge.net

# MIT license or the GNU LGPL, at your option.
PERMIT_PACKAGE =	Yes

WANTLIB += GL GLU ICE SM X11 Xdamage Xext Xfixes Xmu Xt Xxf86vm drm
WANTLIB += freetype m ${COMPILER_LIBCXX} xcb xcb-glx z expat
WANTLIB += X11-xcb glapi pthread xcb-dri2   

COMPILER =		base-clang ports-gcc base-gcc

WRKDIST =		${WRKDIR}/${DISTNAME:S/-rc/~rc/}

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ftgl/}
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-gl-inc=${X11BASE}/include	\
			--with-gl-lib=${X11BASE}/lib

CONFIGURE_ENV +=	ac_cv_path_DOXYGEN=no

# 2.1.3~rc5 is a ridiculous version to stow in a pkg-config file,
# so add this workaround to prevent pkg-config from choking.
pre-configure:
	sed -i 's,\@PACKAGE_VERSION\@,${V},' ${WRKSRC}/ftgl.pc.in

post-install:
	${INSTALL_DATA} \
		${WRKSRC}/src/FTLibrary.h \
		${WRKSRC}/src/FTFace.h \
		${WRKSRC}/src/FTSize.h \
		${PREFIX}/include/FTGL/

.include <bsd.port.mk>
