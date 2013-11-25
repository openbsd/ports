# $OpenBSD: Makefile,v 1.14 2013/11/25 14:16:22 sthen Exp $

COMMENT=		powerful descriptive vector graphics language

DISTNAME=		asymptote-2.10.src
PKGNAME=		${DISTNAME:S/.src//g}
REVISION =		5
CATEGORIES=		graphics

HOMEPAGE=		http://asymptote.sourceforge.net/

# LGPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=asymptote/}
EXTRACT_SUFX=		.tgz

MODULES=		lang/python

WANTLIB += GL GLU c m ncurses pthread readline stdc++ z
WANTLIB += gc glut gsl gslcblas sigsegv fftw3

BUILD_DEPENDS=		print/texlive/base
RUN_DEPENDS=		graphics/py-Imaging \
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
			--enable-gsl
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib -pthread" \
			ac_cv_prog_kpsewhich="${LOCALBASE}/bin/kpsewhich"

FAKE_FLAGS+=		exampledir="${WRKINST}${PREFIX}/share/examples/asymptote"

PORTHOME=		${WRKDIR}

MODPY_ADJ_FILES=	GUI/*.py

WRKDIST=		${WRKDIR}/${DISTNAME:S/.src//g}/

post-install:
	mv ${PREFIX}/man/man1/xasy.1x ${PREFIX}/man/man1/xasy.1

.include <bsd.port.mk>
