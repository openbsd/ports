# $OpenBSD: Makefile,v 1.1.1.1 2010/08/31 14:12:29 jasper Exp $

COMMENT=		powerful descriptive vector graphics language

DISTNAME=		asymptote-2.04.src
PKGNAME=		${DISTNAME:S/.src//g}
CATEGORIES=		graphics

HOMEPAGE=		http://asymptote.sourceforge.net/

# LGPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=asymptote/}
EXTRACT_SUFX=		.tgz

WANTLIB += GL GLU c m ncurses pthread readline stdc++ z
WANTLIB += gc glut sigsegv fftw3

BUILD_DEPENDS= 		${RUN_DEPENDS}
RUN_DEPENDS=		::print/texlive/base
LIB_DEPENDS=		::devel/boehm-gc \
			::devel/libsigsegv \
			::graphics/freeglut \
			::math/fftw3

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-gc=${LOCALBASE} \
			--enable-gl \
			--infodir=${PREFIX}/info
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib -pthread" \
			ac_cv_prog_kpsewhich="${LOCALBASE}/bin/kpsewhich"

PORTHOME=		${WRKDIR}

WRKDIST= 		${WRKDIR}/${DISTNAME:S/.src//g}/

post-install:
	mv ${PREFIX}/man/man1/xasy.1x ${PREFIX}/man/man1/xasy.1

.include <bsd.port.mk>
