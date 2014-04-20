# $OpenBSD: Makefile,v 1.18 2014/04/20 07:09:09 landry Exp $

COMMENT=		powerful descriptive vector graphics language
BROKEN-hppa=		ghostscript segfaults during build

DISTNAME=		asymptote-2.24.src
PKGNAME=		asymptote-2.24
CATEGORIES=		graphics
REVISION =		1

HOMEPAGE=		http://asymptote.sourceforge.net/

# LGPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=asymptote/}
EXTRACT_SUFX=		.tgz

MODULES=		lang/python

WANTLIB += GL GLU c fftw3 gc glut gsl gslcblas m ncurses pthread
WANTLIB += pthread-stubs readline sigsegv stdc++ z

BUILD_DEPENDS=		print/texlive/base
RUN_DEPENDS=		graphics/py-Pillow \
			print/texlive/texmf,-full \
			${MODPY_TKINTER_DEPENDS}

LIB_DEPENDS=		devel/boehm-gc \
			devel/gsl \
			devel/libsigsegv \
			graphics/freeglut \
			math/fftw3

USE_GMAKE=		Yes
USE_GROFF =		Yes

# XXX eats all memory
.if ${MACHINE_ARCH:Msparc64}
CFLAGS+=		-O0
.endif

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-gc=${LOCALBASE} \
			--enable-fftw \
			--enable-gl \
			--enable-gsl \
			--with-latex=${LOCALBASE}/share/texmf-local/tex/latex \
			--with-context=${LOCALBASE}/share/texmf-local/tex/context/third
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
			ac_cv_prog_kpsewhich="${LOCALBASE}/bin/kpsewhich"

FAKE_FLAGS+=		exampledir="${WRKINST}${PREFIX}/share/examples/asymptote"

PORTHOME=		${WRKDIR}

MODPY_ADJ_FILES=	GUI/*.py

WRKDIST=		${WRKDIR}/${DISTNAME:S/.src//g}/

post-install:
	mv ${PREFIX}/man/man1/xasy.1x ${PREFIX}/man/man1/xasy.1

.include <bsd.port.mk>
