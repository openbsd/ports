# $OpenBSD: Makefile,v 1.6 2001/07/26 17:37:46 naddy Exp $

COMMENT=	"free lossless audio codec"
COMMENT-xmms=	"FLAC input plugin for XMMS"

VERSION=	1.0
PKGNAME=	flac-${VERSION}
PKGNAME-xmms=	flac-xmms-${VERSION}
DISTNAME=	flac-${VERSION}-src
CATEGORIES=	audio archivers
NEED_VERSION=	1.427
HOMEPAGE=	http://flac.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	flac

MULTI_PACKAGES=	-xmms
SUBPACKAGE?=

.if !defined(PACKAGING)
LIB_DEPENDS+=	xmms.2::audio/xmms
.endif
.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	nasm::devel/nasm
.endif

USE_LIBTOOL=	Yes	# included libtool is broken
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static
WRKDIST=	${WRKDIR}/${DISTNAME:S/-src//}

.if defined(PACKAGING) && ${SUBPACKAGE} == "-xmms"
LIB_DEPENDS=	FLAC.1::audio/flac
RUN_DEPENDS=	xmms::audio/xmms
.endif

DOCDIR=		${PREFIX}/share/doc/flac

post-extract:
	@rm -rf ${WRKSRC}/obj
# configure ignores LIBTOOL
	@cd ${LOCALBASE}/share/libtool && cp ltconfig ltmain.sh ${WRKSRC}

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${DOCDIR}
	${INSTALL_DATA_DIR} ${DOCDIR}/images
	${INSTALL_DATA} ${WRKSRC}/doc/images/*.gif ${DOCDIR}/images
	${INSTALL_DATA} ${WRKSRC}/doc/images/*.jpg ${DOCDIR}/images

.include <bsd.port.mk>
