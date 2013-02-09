# $OpenBSD: Makefile,v 1.38 2013/02/09 14:49:51 sthen Exp $

COMMENT=	GRaphing, Advanced Computation and Exploration of data

DISTNAME=	grace-5.1.15
REVISION=	5
CATEGORIES=	math

HOMEPAGE=	http://plasma-gate.weizmann.ac.il/Grace/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m z

GRACE_SITES=	ftp://plasma-gate.weizmann.ac.il/pub/ \
		ftp://ftp.fu-berlin.de/unix/graphics/ \
		ftp://ftp.u-aizu.ac.jp/pub/SciEng/math/ \
		ftp://freedom7.swmed.edu/pub/mirrors/
MASTER_SITES=	${GRACE_SITES:=grace/src/grace5/}

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/ac-tools
CONFIGURE_ARGS+=	--with-bundled-xbae \
			--with-extra-incpath=${LOCALBASE}/include:${LOCALBASE}/include/libpng \
			--with-extra-ldpath=${LOCALBASE}/lib \
			--enable-grace-home=${PREFIX}/grace
USE_GROFF =	Yes

LIB_DEPENDS =	graphics/jpeg \
		graphics/png \
		devel/t1lib \
		graphics/tiff \
		print/pdflib
WANTLIB +=	jpeg>=62 png>=2 t1>=5 tiff>=35 pdf>=2

FLAVORS=	no_x11 fftw netcdf xmhtml
FLAVOR?=

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+=	--without-x
NO_REGRESS=		Yes
.  if ${FLAVOR:Mxmhtml}
ERRORS+=	"Fatal: Flavors 'no_x11' and 'xmhtml' are mutually exclusive."
.  endif
.else
REGRESS_IS_INTERACTIVE=	x11
LIB_DEPENDS+=		x11/openmotif
WANTLIB+=		ICE SM X11 Xext Xmu Xpm Xt Xm
MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'
.  if ${FLAVOR:Mxmhtml}
LIB_DEPENDS +=		www/xmhtml
WANTLIB +=		XmHTML>=1
CONFIGURE_ARGS+=	--enable-xmhtml
.  else
CONFIGURE_ARGS+=	--disable-xmhtml
.  endif
CONFIGURE_ENV=		LDFLAGS=-lm
.endif

.if ${FLAVOR:Mfftw}
LIB_DEPENDS +=		math/fftw
WANTLIB +=		fftw>=2
CONFIGURE_ARGS+=	--with-fftw
.else
CONFIGURE_ARGS+=	--without-fftw
.endif

.if ${FLAVOR:Mnetcdf}
LIB_DEPENDS +=		math/netcdf
WANTLIB +=		netcdf>=1
CONFIGURE_ARGS+=	--enable-netcdf
.else
CONFIGURE_ARGS+=	--disable-netcdf
.endif

GRACE_DIR=${TRUEPREFIX}/grace
post-install:
.if ${FLAVOR:Mno_x11}
	ln -sf ${GRACE_DIR}/bin/grace ${PREFIX}/bin/grace
	ln -sf ${GRACE_DIR}/bin/grace ${PREFIX}/bin/gracebat
.else
	ln -sf ${GRACE_DIR}/bin/xmgrace ${PREFIX}/bin/grace
	ln -sf ${GRACE_DIR}/bin/xmgrace ${PREFIX}/bin/gracebat
	ln -sf ${GRACE_DIR}/bin/xmgrace ${PREFIX}/bin/xmgrace
	ln -sf ../../grace/doc/xmgrace.1 ${PREFIX}/man/man1/xmgrace.1
.endif
	ln -sf ${GRACE_DIR}/include/grace_np.h ${PREFIX}/include/grace_np.h
	ln -sf ${GRACE_DIR}/lib/libgrace_np.a ${PREFIX}/lib/libgrace_np.a
	ln -sf ../../grace/doc/grace.1 ${PREFIX}/man/man1/grace.1
	ln -sf ../../grace/doc/gracebat.1 ${PREFIX}/man/man1/gracebat.1
	ln -sf ../../grace/doc/grconvert.1 ${PREFIX}/man/man1/grconvert.1
	
.include <bsd.port.mk>
