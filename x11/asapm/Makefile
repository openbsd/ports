# $OpenBSD: Makefile,v 1.1.1.1 2000/12/13 16:16:35 camield Exp $

DISTNAME=	asapm-2.9
HOMEPAGE=	http://www.tigr.net/afterstep/

CATEGORIES=	x11
NEED_VERSION=	1.340
MAINTAINER=	Joshua Stein <jcs@rt.fm>

ONLY_FOR_ARCHS=	i386

MASTER_SITES=	http://www.tigr.net/afterstep/download/asapm/ \
		ftp://rt.fm/pub/asapm/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=		jpeg.62::graphics/jpeg

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-afterdir=${PREFIX}/bin --enable-jpeg
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

MAKE_FLAGS=		LIBS_JPEG="-ljpeg -L${LOCALBASE}/lib"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/asapm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/asapm.man ${PREFIX}/man/man1/asapm.1

.include <bsd.port.mk>
