# $OpenBSD: Makefile.inc,v 1.3 2006/09/18 10:21:48 espie Exp $
#
# This library can be built for several GUI toolkits.
# Most can be installed side-by-side.

##############################
CATEGORIES=	x11

VERSION=	2.4.2
DISTNAME=	wxAll-${VERSION}

HOMEPAGE=	http://www.wxwidgets.org/
# See also http://wesley.informatik.uni-freiburg.de/~wxxt/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wxwindows/}

MAINTAINER=	Andrew Dalgleish <openbsd@ajd.net.au>

# Modified LGPL
# See ${WRKDIST}/docs/license.txt
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

##############################
# Allow for building debug libs.
# OpenBSD does not use the 'd' suffix on the library name
# Uncomment this line, or add it to the env.
#CONFIGURE_ARGS+=	--enable-debug

##############################
# Depend on various system libraries
MODULES+=	converters/libiconv

LIB_DEPENDS+=	jpeg.>=62::graphics/jpeg

MY_INC+=	-I${LOCALBASE}/include/libpng
LIB_DEPENDS+=	png.>=4.0::graphics/png

LIB_DEPENDS+=	tiff.>=36.1::graphics/tiff

##############################
WRKDIST=	${WRKDIR}/wxWindows-${VERSION}
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
SEPARATE_BUILD=	yes
CONFIGURE_STYLE=gnu dest
USE_GMAKE=	Yes
USE_X11=	Yes
PATCHDIR=	${.CURDIR}/../patches
CHECKSUM_FILE=	${.CURDIR}/../distinfo

##############################
# Remove some unused source dirs to make sure that:
# We do not accidentally use the wrong header.
# Greping for bugs ignores the unused source.
post-extract:
	rm -fr ${WRKDIST}/include/wx/mac
	rm -fr ${WRKDIST}/include/wx/msw
	rm -fr ${WRKDIST}/include/wx/os2
	rm -fr ${WRKDIST}/src/jpeg
	rm -fr ${WRKDIST}/src/mac
	rm -fr ${WRKDIST}/src/msw
	rm -fr ${WRKDIST}/src/os2
	rm -fr ${WRKDIST}/src/png
	rm -fr ${WRKDIST}/src/regex
	rm -fr ${WRKDIST}/src/tiff
	rm -fr ${WRKDIST}/src/zlib

##############################
.if !defined(NO_SHARED_LIBS) || ${NO_SHARED_LIBS:U} != YES
CFLAGS+=	-fPIC
CXXFLAGS+=	-fPIC
LDFLAGS+=	-fPIC
.endif

MY_INC+=		-I${LOCALBASE}/include -I${X11BASE}/include
MY_LIB+=		-L${LOCALBASE}/lib

CONFIGURE_ENV+=	CPPFLAGS="${CPPFLAGS} ${MY_INC}"
CONFIGURE_ENV+=	CFLAGS="${CFLAGS} ${MY_INC}"
CONFIGURE_ENV+=	CXXFLAGS="${CXXFLAGS} ${MY_INC}"
CONFIGURE_ENV+=	LDFLAGS="${LDFLAGS} ${MY_LIB}"

##############################
# For a regression test, build & run the demos
# (for all except headers & base)

REGRESS_IS_INTERACTIVE=	Yes
REGRESS_TARGET=

do-regress:
	cd ${WRKBUILD}/demos && exec ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${REGRESS_FLAGS} -f ${MAKE_FILE} ${REGRESS_TARGET}

.for PROG in bombs forty fractal life
	cd ${WRKBUILD}/demos/${PROG} && ./${PROG}
.endfor
.for PROG in poem
	cd ${WRKBUILD}/demos/${PROG} && ./wx${PROG}
.endfor

##############################
