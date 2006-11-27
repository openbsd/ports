# $OpenBSD: Makefile,v 1.3 2006/11/27 10:33:28 ajacoutot Exp $

COMMENT=	"photorealistic 3D rendering solution"

DISTNAME=	aqsis-1.0.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	graphics

SHARED_LIBS += argparse		0.0	# 0.0
SHARED_LIBS += aqsistypes	0.0	# 0.0
SHARED_LIBS += codegenvm	0.0	# 0.0
SHARED_LIBS += rib2		0.0	# 0.0
SHARED_LIBS += rib2ri		0.0	# 0.0
SHARED_LIBS += rib2stream	0.0	# 0.0
SHARED_LIBS += slparse		0.0	# 0.0
SHARED_LIBS += shadervm		0.0	# 0.0
SHARED_LIBS += shaderexecenv	0.0	# 0.0
SHARED_LIBS += raytrace		0.0	# 0.0
SHARED_LIBS += slpp		0.0	# 0.0
SHARED_LIBS += ri2rib		0.0	# 0.0
SHARED_LIBS += slxargs		0.0	# 0.0
SHARED_LIBS += display		0.0	# 0.0
SHARED_LIBS += ddmanager	0.0	# 0.0
SHARED_LIBS += aqsis		0.0	# 0.0
SHARED_LIBS += gif2tif		0.0	# 0.0
SHARED_LIBS += jpg2tif		0.0	# 0.0
SHARED_LIBS += ppm2tif		0.0	# 0.0
SHARED_LIBS += pcx2tif		0.0	# 0.0
SHARED_LIBS += tga2tif		0.0	# 0.0
SHARED_LIBS += bake2tif		0.0	# 0.0

HOMEPAGE=	http://www.aqsis.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2/LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=aqsis/}

WANTLIB=	X11 Xext c m stdc++ z

BUILD_DEPENDS=	::textproc/libxslt \
		:boost-headers-1.33.*:devel/boost
LIB_DEPENDS=	fltk.>=1::x11/fltk \
		jpeg.>=62::graphics/jpeg \
		tiff.>=38::graphics/tiff

USE_X11=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu

# This regression test wants an X11 display
# and manual closing of rendered images
REGRESS_IS_INTERACTIVE=Yes

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -fPIC" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static

pre-configure:
	perl -pi -e 's,PLUGIN_FLAGS="-ldl",PLUGIN_FLAGS="",g' \
		${WRKSRC}/configure
	perl -pi -e 's,libdisplay.so,libdisplay.so.${LIBdisplay_VERSION},g' \
		${WRKSRC}/display/displays.ini
	perl -pi -e 's,!!LIBdisplay_VERSION!!,${LIBdisplay_VERSION},g' \
		${WRKSRC}/display/Makefile.in
	@find ${WRKSRC} -name Makefile.in | \
		xargs perl -pi -e 's,-I\$$\(top_srcdir\)/boost,,g'

do-regress:
	@cd ${WRKBUILD} && \
		${MAKE_PROGRAM} ${REGRESS_FLAGS} -f ${MAKE_FILE} ${REGRESS_TARGET}

.include <bsd.port.mk>
