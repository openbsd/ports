# $OpenBSD: Makefile,v 1.7 2002/04/21 04:02:48 pvalchev Exp $
# $FreeBSD: ports/math/grace/Makefile,v 1.18 2001/04/25 05:59:19 lkoeller Exp $
# Original from: Lars Koeller <Lars.Koeller@Uni-Bielefeld.de>

COMMENT=	"GRaphing, Advanced Computation and Exploration of data"

DISTNAME=	grace-5.1.7
CATEGORIES=	math
NEED_VERSION=	1.524

HOMEPAGE=	http://plasma-gate.weizmann.ac.il/Grace/

MAINTAINER=	Nikolay Sturm <Nikolay.Sturm@desy.de>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://plasma-gate.weizmann.ac.il/pub/grace/src/ \
		ftp://ftp.fu-berlin.de/unix/graphics/grace/src/ \
		ftp://freedom7.swmed.edu/pub/mirrors/grace/src/

FAKE_FLAGS=	GRACE_HOME=${WRKINST}${PREFIX}/grace

CONFIGURE_STYLE=	gnu dest
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/ac-tools
CONFIGURE_ARGS+=	--with-bundled-xbae \
			--with-extra-incpath=${LOCALBASE}/include \
			--with-extra-ldpath=${LOCALBASE}/lib \
			--enable-grace-home=${LOCALBASE}/grace

LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		png.2::graphics/png \
		t1.3::devel/t1lib \
		tiff.35::graphics/tiff \
		pdf.2::print/pdflib

FLAVORS=	no_x11 fftw netcdf xmhtml
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=	--without-x
NO_REGRESS=		Yes
.  if ${FLAVOR:L:Mxmhtml}
ERRORS+=	"Fatal: Flavors 'no_x11' and 'xmhtml' are mutually exclusive."
.  endif
.else
# 'make regress' needs X11 running
REGRESS_IS_INTERACTIVE=	Yes
REGRESS_FLAGS=		DISPLAY=${DISPLAY}
USE_X11=		Yes
USE_MOTIF=		openmotif
.  if ${FLAVOR:L:Mxmhtml}
LIB_DEPENDS+=		XmHTML.1::www/xmhtml
CONFIGURE_ARGS+=	--enable-xmhtml
.  else
CONFIGURE_ARGS+=	--disable-xmhtml
.  endif
.endif

.if ${FLAVOR:L:Mfftw}
LIB_DEPENDS+=		fftw.2::math/fftw
CONFIGURE_ARGS+=	--with-fftw
.else
CONFIGURE_ARGS+=	--without-fftw
.endif

.if ${FLAVOR:L:Mnetcdf}
LIB_DEPENDS+=		netcdf.1::math/netcdf
CONFIGURE_ARGS+=	--enable-netcdf
.else
CONFIGURE_ARGS+=	--disable-netcdf
.endif

.include <bsd.port.mk>
