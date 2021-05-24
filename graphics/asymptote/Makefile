# $OpenBSD: Makefile,v 1.40 2021/05/24 10:15:04 sthen Exp $

COMMENT=		powerful descriptive vector graphics language

DISTNAME=		asymptote-2.70
EXTRACT_SUFX=		.src.tgz
CATEGORIES=		graphics

HOMEPAGE=		https://asymptote.sourceforge.io/

# LGPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL c curses fftw3 gc glut gsl gslcblas m readline sigsegv z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=asymptote/}

MODULES=		lang/python

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS=		print/texinfo \
			print/texlive/base \
			print/texlive/texmf,-main
RUN_DEPENDS=		graphics/py-Pillow${MODPY_FLAVOR} \
			print/texlive/texmf,-full \
			${MODPY_TKINTER_DEPENDS}

LIB_DEPENDS=		devel/boehm-gc \
			devel/gsl \
			devel/libsigsegv \
			graphics/freeglut \
			math/fftw3

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
	ln -s ${LOCALBASE}/bin/gmakeinfo ${WRKDIR}/bin/makeinfo

post-install:
	mv ${PREFIX}/man/man1/xasy.1x ${PREFIX}/man/man1/xasy.1

.include <bsd.port.mk>
