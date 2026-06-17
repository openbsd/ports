COMMENT=		Mozilla's universal character set detector C/C++ API

V=			1.0.6
DISTNAME=		libchardet-${V}
EXTRACT_SUFX=		.tar.bz2

SHARED_LIBS +=  chardet              0.0      # 1.0

CATEGORIES=		textproc

# https preferred for HOMEPAGE
#HOMEPAGE =	???	URL

# MPL-1.1
PERMIT_PACKAGE=		Yes

SITES=			https://github.com/Joungkyun/libchardet/releases/download/${V}/

WANTLIB += ${COMPILER_LIBCXX} m

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
