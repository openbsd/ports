# $OpenBSD: Makefile,v 1.26 2009/09/06 10:46:25 ajacoutot Exp $
# $FreeBSD: ports/math/grace/Makefile,v 1.18 2001/04/25 05:59:19 lkoeller Exp $
# Original from: Lars Koeller <Lars.Koeller@Uni-Bielefeld.de>

COMMENT=	GRaphing, Advanced Computation and Exploration of data

DISTNAME=	grace-5.1.15
PKGNAME=	${DISTNAME}p1
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

LIB_DEPENDS=	jpeg.>=62::graphics/jpeg \
		png.>=2::graphics/png \
		t1.>=5::devel/t1lib \
		tiff.>=35::graphics/tiff \
		pdf.>=2::print/pdflib

FLAVORS=	no_x11 fftw netcdf xmhtml
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=	--without-x
NO_REGRESS=		Yes
.  if ${FLAVOR:L:Mxmhtml}
ERRORS+=	"Fatal: Flavors 'no_x11' and 'xmhtml' are mutually exclusive."
.  endif
.else
REGRESS_IS_INTERACTIVE=	x11
USE_X11=		Yes
USE_MOTIF=		openmotif
WANTLIB+=		ICE SM X11 Xext Xmu Xp Xpm Xt pthread-stubs xcb
.  if ${FLAVOR:L:Mxmhtml}
LIB_DEPENDS+=		XmHTML.>=1::www/xmhtml
CONFIGURE_ARGS+=	--enable-xmhtml
.  else
CONFIGURE_ARGS+=	--disable-xmhtml
.  endif
.endif

.if ${FLAVOR:L:Mfftw}
LIB_DEPENDS+=		fftw.>=2::math/fftw
CONFIGURE_ARGS+=	--with-fftw
.else
CONFIGURE_ARGS+=	--without-fftw
.endif

.if ${FLAVOR:L:Mnetcdf}
LIB_DEPENDS+=		netcdf.>=1::math/netcdf
CONFIGURE_ARGS+=	--enable-netcdf
.else
CONFIGURE_ARGS+=	--disable-netcdf
.endif

GRACE_DIR=${TRUEPREFIX}/grace
post-install:
.if ${FLAVOR:L:Mno_x11}
	ln -sf ${GRACE_DIR}/bin/grace ${PREFIX}/bin/grace
	ln -sf ${GRACE_DIR}/bin/grace ${PREFIX}/bin/gracebat
.else
	ln -sf ${GRACE_DIR}/bin/xmgrace ${PREFIX}/bin/grace
	ln -sf ${GRACE_DIR}/bin/xmgrace ${PREFIX}/bin/gracebat
	ln -sf ${GRACE_DIR}/bin/xmgrace ${PREFIX}/bin/xmgrace
	ln -sf ${GRACE_DIR}/doc/xmgrace.1 ${PREFIX}/man/man1/xmgrace.1
.endif
	ln -sf ${GRACE_DIR}/include/grace_np.h ${PREFIX}/include/grace_np.h
	ln -sf ${GRACE_DIR}/lib/libgrace_np.a ${PREFIX}/lib/libgrace_np.a
	ln -sf ${GRACE_DIR}/doc/grace.1 ${PREFIX}/man/man1/grace.1
	ln -sf ${GRACE_DIR}/doc/gracebat.1 ${PREFIX}/man/man1/gracebat.1
	ln -sf ${GRACE_DIR}/doc/grconvert.1 ${PREFIX}/man/man1/grconvert.1
	
.include <bsd.port.mk>
