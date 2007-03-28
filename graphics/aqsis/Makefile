# $OpenBSD: Makefile,v 1.5 2007/03/28 17:14:02 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	"photorealistic 3D rendering solution"

V=		1.2.0
DISTNAME=	aqsis-${V}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	graphics

SHARED_LIBS+=	aqsis		1.0 \
		aqsistypes	1.0 \
		ri2rib		1.0 \
		shadervm	1.0 \
		slxargs		1.0

HOMEPAGE=	http://www.aqsis.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2/LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=aqsis/}

WANTLIB=	c m stdc++ z

BUILD_DEPENDS=	::textproc/libxslt \
		:boost-headers-1.33.*:devel/boost \
		::devel/scons \
		::devel/bison
LIB_DEPENDS=	fltk.>=1::x11/fltk \
		jpeg.>=62::graphics/jpeg \
		tiff.>=38::graphics/tiff \
		Half.>=3,Iex.>=3,IlmImf.>=3,Imath.>=3::graphics/openexr

NO_REGRESS=	Yes

MAKE_ENV+=	CC=${CC} CXX=${CXX} LDFLAGS="-fPIC -L${X11BASE}/lib" VERSION_STR=1.2.0

pre-configure:
	perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g' \
		${WRKSRC}/platform/default/SConscript
	perl -pi -e 's,major.*$$,major = ${LIBaqsis_VERSION:R},g;' \
		-e 's,minor.*$$,minor = ${LIBaqsis_VERSION:E},g;' \
		${WRKSRC}/version.py
	perl -pi -e 's,VERSION_STR.*$$,VERSION_STR "${V}",g' \
		${WRKSRC}/version.h.in

do-build:
	@cd ${WRKSRC} && env -i ${MAKE_ENV} scons \
		tiff_include_path=${LOCALBASE}/include \
		tiff_lib_path=${LOCALBASE}/lib \
		jpeg_include_path=${LOCALBASE}/include \
		jpeg_lib_path=${LOCALBASE}/lib \
		fltk_include_path=${LOCALBASE}/include \
		fltk_lib_path=${LOCALBASE}/lib \
		exr_include_path=${LOCALBASE}/include/OpenEXR \
		exr_lib_path=${LOCALBASE}/include \
		bison=${LOCALBASE}/bin/bison \
		sysconfdir=${SYSCONFDIR} \
		destdir=${DESTDIR} \
		install_prefix='${PREFIX}' build

do-install:
	@cd ${WRKSRC} && env -i ${MAKE_ENV} scons
		install_prefix='${PREFIX}'
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/aqsis
	${INSTALL_DATA} ${WRKSRC}/build/aqsisrc \
		${PREFIX}/share/examples/aqsis/

.include <bsd.port.mk>
