# $OpenBSD: Makefile,v 1.9 2007/09/09 15:17:06 fgsch Exp $

COMMENT=	emulates the Super Nintendo Entertainment System

DISTNAME=	snes9x-1.51-src
PKGNAME=	${DISTNAME:S/-src//}
CATEGORIES=	emulators games

HOMEPAGE=	http://www.snes9x.com/

# non-commercial
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

WANTLIB+=	X11 Xext Xxf86dga Xxf86vm c m pthread stdc++ z

MASTER_SITES=	http://vincent.grigorieff.free.fr/snes9x/ \
		http://files.ipherswipsite.com/snes9x/
EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	png::graphics/png

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS=  ::devel/nasm 
.endif

AUTOCONF_VERSION=	2.59

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=autoconf no-autoheader
CONFIGURE_ENV=	OPTFLAGS="${CXXFLAGS} -I${LOCALBASE}/include/libpng" \
		LIBS="-L${LOCALBASE}/lib"

NO_REGRESS=	Yes

post-configure:
	@perl -pi -e 's|\b_C\b|__C|g' ${WRKSRC}/cheats.cpp

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/snes9x
	${INSTALL_PROGRAM} ${WRKSRC}/snes9x ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${WRKSRC}/unix/docs/*.txt \
	  ${PREFIX}/share/doc/snes9x

.include <bsd.port.mk>
