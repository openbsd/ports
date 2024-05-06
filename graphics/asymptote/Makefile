COMMENT=		powerful descriptive vector graphics language

DISTNAME=		asymptote-2.82
EXTRACT_SUFX=		.src.tgz
CATEGORIES=		graphics
REVISION=		4

HOMEPAGE=		https://asymptote.sourceforge.io/

# LGPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL c curl curses fftw3 gc glut gsl gslcblas m readline sigsegv z

SITES=			${SITE_SOURCEFORGE:=asymptote/}

MODULES=		lang/python

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS=		graphics/glm \
			print/texinfo \
			print/texlive/base \
			print/texlive/texmf,-main \
			print/texlive/texmf,-full \
			math/eigen3 \
			x11/py-qt5${MODPY_FLAVOR}
RUN_DEPENDS=		print/texlive/texmf,-full \
			math/py-numpy${MODPY_FLAVOR} \
			textproc/py-cson${MODPY_FLAVOR} \
			x11/gnome/librsvg \
			x11/py-qt5${MODPY_FLAVOR}

LIB_DEPENDS=		devel/boehm-gc \
			devel/gsl \
			devel/libsigsegv \
			graphics/freeglut \
			math/fftw3 \
			net/curl

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-gc=${LOCALBASE} \
			--enable-fftw \
			--enable-gl \
			--enable-gsl \
			--with-latex=${LOCALBASE}/share/texmf-local/tex/latex \
			--with-context=${LOCALBASE}/share/texmf-local/tex/context/third
CONFIGURE_ENV=		CPPFLAGS="-I${WRKSRC} -I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
			ac_cv_prog_kpsewhich="${LOCALBASE}/bin/kpsewhich"

FAKE_FLAGS+=		exampledir="${WRKINST}${PREFIX}/share/examples/asymptote"

PORTHOME=		${WRKDIR}

MODPY_ADJ_FILES=	GUI/*.py

pre-build:
	ln -sf ${LOCALBASE}/bin/gmakeinfo ${WRKDIR}/bin/makeinfo

post-install:
	mv ${PREFIX}/man/man1/xasy.1x ${PREFIX}/man/man1/xasy.1

.include <bsd.port.mk>
