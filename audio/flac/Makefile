# $OpenBSD: Makefile,v 1.13 2002/05/13 18:50:36 espie Exp $

COMMENT=	"free lossless audio codec"

DISTNAME=	flac-1.0.2
CATEGORIES=	audio archivers
NEED_VERSION=	1.504
HOMEPAGE=	http://flac.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=flac/}
EXTRACT_SUFX=		-src.tar.gz

LIB_DEPENDS=	ogg.3::audio/libogg

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	::devel/nasm
.endif

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-sse --enable-3dnow
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${WRKBUILD}/src/libFLAC/.libs -L${LOCALBASE}/lib" \
		XMMS_CONFIG=/usr/bin/false
MAKE_ENV=	INCLUDES="-I${WRKSRC}/include"

DOCDIR=		${PREFIX}/share/doc/flac

pre-build:
	@rm -rf ${WRKSRC}/obj

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${DOCDIR}
	${INSTALL_DATA_DIR} ${DOCDIR}/images
	${INSTALL_DATA} ${WRKSRC}/doc/images/*.gif ${DOCDIR}/images
	${INSTALL_DATA} ${WRKSRC}/doc/images/*.jpg ${DOCDIR}/images

.include <bsd.port.mk>
