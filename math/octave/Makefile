# $OpenBSD: Makefile,v 1.1.1.1 2001/07/15 18:07:15 naddy Exp $

COMMENT=	"High-level language for numerical computations"
VERSION=	2.0.16
DISTNAME=	octave-${VERSION}
CATEGORIES=    	math
NEED_VERSION=	1.402

HOMEPAGE=	http://www.che.wisc.edu/octave/

MAINTAINER=	Sungman Cho <smcho@tsp.korea.ac.kr>

# Licensing:  GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	octave

BUILD_DEPENDS=	gnuplot:gnuplot-*:math/gnuplot
RUN_DEPENDS=	gnuplot:gnuplot-*:math/gnuplot

USE_GMAKE=	Yes

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS=		${CONFIGURE_SHARED} ${GCCARCH}
CONFIGURE_ENV= 		FFLAGS="${CFLAGS}" SOREV="${SHLIB_VER}"

# need shared library version for machines which support shared libraries.
SHLIB_VER=	1.0
GCCARCH=	${MACHINE_ARCH}-unknown-openbsd${OPSYS_VER}
SUBST_VARS=	GCCARCH VERSION SHLIB_VER

pre-build:
	@rm -f ${WRKSRC}/doc/liboctave/liboctave.info*

# fix ls-R
post-install:
	@cd ${PREFIX}/share/octave && \
	    sed -e "s,${PREFIX},${TRUEPREFIX}," ls-R > ls-R.new && \
	    mv -f ls-R.new ls-R
	@cd ${PREFIX}/libexec/octave && \
	    sed -e "s,${PREFIX},${TRUEPREFIX}," ls-R > ls-R.new && \
	    mv -f ls-R.new ls-R

.include <bsd.port.mk>

# if we can use shared libraries, make octave use modules.
.if !defined (NO_SHARED_LIBS)
CONFIGURE_ARGS+=	--enable-lite-kernel
.endif
