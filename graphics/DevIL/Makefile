# $OpenBSD: Makefile,v 1.1.1.1 2011/03/30 09:27:58 jasper Exp $

COMMENT=		library for powerful image loading capabilities

DISTNAME=		DevIL-1.7.8
SHARED_LIBS+=		IL	0.0 # 2.0

CATEGORIES=		graphics devel

HOMEPAGE=		http://openil.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=openil/}
EXTRACT_SUFX=		.zip

WANTLIB += jasper jpeg lcms m png stdc++ tiff z

LIB_DEPENDS=		graphics/jasper \
			graphics/lcms \
			graphics/openjpeg \
			graphics/tiff \
			graphics/png

USE_LIBTOOL=		Yes

AUTOCONF_VERSION=	2.61
CONFIGURE_STYLE=	autoconf gnu
CONFIGURE_ARGS+=	--with-squish=no \
			--with-examples=no \
			--with-zlib=yes
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng/ -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -lm -lz"

WRKDIST=		${WRKDIR}/${DISTNAME:L}

# Too many Linuxisms in testing tools
NO_REGRESS=		Yes

post-extract:
	chmod +x ${WRKSRC}/configure
	${SUBST_CMD} ${WRKSRC}/test/Makefile.in

post-configure:
	chmod +x ${WRKDIST}/build-aux/install-sh

.include <bsd.port.mk>
