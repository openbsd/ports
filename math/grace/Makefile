# $OpenBSD: Makefile,v 1.47 2019/12/26 12:05:00 jca Exp $

COMMENT=	GRaphing, Advanced Computation and Exploration of data

DISTNAME=	grace-5.1.15
REVISION=	10
CATEGORIES=	math

HOMEPAGE=	http://plasma-gate.weizmann.ac.il/Grace/

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		c m z

GRACE_SITES=	ftp://plasma-gate.weizmann.ac.il/pub/ \
		ftp://ftp.fu-berlin.de/unix/graphics/ \
		ftp://ftp.u-aizu.ac.jp/pub/SciEng/math/
MASTER_SITES=	${GRACE_SITES:=grace/src/grace5/}

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/ac-tools
CONFIGURE_ARGS+=	--with-bundled-xbae \
			--with-extra-incpath=${LOCALBASE}/include \
			--with-extra-ldpath=${LOCALBASE}/lib \
			--with-fftw \
			--enable-netcdf \
			--enable-grace-home=${PREFIX}/grace

LIB_DEPENDS =	devel/t1lib \
		graphics/jpeg \
		graphics/png \
		graphics/tiff \
		math/fftw \
		math/netcdf \
		print/pdflib

WANTLIB +=	jpeg>=62 png>=2 pdf>=2 t1>=5 tiff>=35 fftw>=2 \
		netcdf>=1

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+=	--without-x
NO_TEST=		Yes
.else
TEST_IS_INTERACTIVE=	x11
LIB_DEPENDS+=		x11/motif
WANTLIB+=		ICE SM X11 Xext Xmu Xpm Xt Xm
MAKE_ENV+=		MOTIFLIB='-L${LOCALBASE}/lib -lXm'
CONFIGURE_ENV=		LDFLAGS=-lm
.endif

GRACE_DIR=${TRUEPREFIX}/grace

post-install:
.if ${FLAVOR:Mno_x11}
	ln -sf ${GRACE_DIR}/bin/grace ${PREFIX}/bin/grace
	ln -sf ${GRACE_DIR}/bin/grace ${PREFIX}/bin/gracebat
	rm -f ${PREFIX}/grace/doc/xmgrace.1
.else
	ln -sf ${GRACE_DIR}/bin/xmgrace ${PREFIX}/bin/grace
	ln -sf ${GRACE_DIR}/bin/xmgrace ${PREFIX}/bin/gracebat
	ln -sf ${GRACE_DIR}/bin/xmgrace ${PREFIX}/bin/xmgrace
	mv ${PREFIX}/grace/doc/xmgrace.1 ${PREFIX}/man/man1/xmgrace.1
.endif
	ln -sf ${GRACE_DIR}/include/grace_np.h ${PREFIX}/include/grace_np.h
	ln -sf ${GRACE_DIR}/lib/libgrace_np.a ${PREFIX}/lib/libgrace_np.a
	mv ${PREFIX}/grace/doc/grace.1 ${PREFIX}/man/man1/grace.1
	mv ${PREFIX}/grace/doc/gracebat.1 ${PREFIX}/man/man1/gracebat.1
	mv ${PREFIX}/grace/doc/grconvert.1 ${PREFIX}/man/man1/grconvert.1

.include <bsd.port.mk>
