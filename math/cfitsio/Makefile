COMMENT=	library for handling FITS astrophysics data files
CATEGORIES=	math astro graphics devel

HOMEPAGE=	https://heasarc.gsfc.nasa.gov/fitsio/fitsio.html

DISTNAME=	cfitsio-4.7.0

# grep -A5 project.version CMakeLists.txt
SHARED_LIBS +=  cfitsio                   4.0 # 10.5

SITES=		https://heasarc.gsfc.nasa.gov/FTP/software/fitsio/c/ \
		https://heasarc.gsfc.nasa.gov/FTP/software/fitsio/c/oldvers/

# Mostly BSD-style, with two chunks of GPL code
PERMIT_PACKAGE=	Yes

WANTLIB += c curl m z

MODULES=	devel/cmake \
		fortran
CFLAGS +=	-DgFortran

LIB_DEPENDS=	net/curl

post-install:
	rm -f ${PREFIX}/bin/{cookbook,speed,testprog}

.include <bsd.port.mk>
