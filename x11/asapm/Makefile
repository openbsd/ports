# $OpenBSD: Makefile,v 1.8 2002/08/26 04:23:24 pvalchev Exp $

COMMENT=	"Advanced Power Management monitor utility for X"

DISTNAME=	asapm-2.11
HOMEPAGE=	http://www.tigr.net/afterstep/

CATEGORIES=	x11
NEED_VERSION=	1.503
MAINTAINER=	Joshua Stein <jcs@rt.fm>

ONLY_FOR_ARCHS=	i386 macppc

MASTER_SITES=	http://www.tigr.net/afterstep/download/asapm/ \
		ftp://rt.fm/pub/asapm/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=		jpeg.62::graphics/jpeg

USE_X11=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-afterdir=${PREFIX}/bin --enable-jpeg
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

MAKE_FLAGS=		LIBS_JPEG="-ljpeg -L${LOCALBASE}/lib"
NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/asapm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/asapm.man ${PREFIX}/man/man1/asapm.1
	@mkdir -p ${PREFIX}/share/examples/asapm
	${INSTALL_DATA} ${WRKSRC}/asapmrc ${PREFIX}/share/examples/asapm/

.include <bsd.port.mk>
