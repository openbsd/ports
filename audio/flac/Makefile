# $OpenBSD: Makefile,v 1.11 2001/11/10 15:00:47 espie Exp $

COMMENT=	"free lossless audio codec"
COMMENT-xmms=	"XMMS input plugin for playing FLAC files"

VERSION=	1.0
DISTNAME=	flac-${VERSION}
PKGNAME-xmms=	xmms-flac-${VERSION}
CATEGORIES=	audio archivers
NEED_VERSION=	1.474
HOMEPAGE=	http://flac.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	flac
EXTRACT_SUFX=		-src.tar.gz

# architectures XMMS runs on
.if ${MACHINE_ARCH} == "i386"
MULTI_PACKAGES=	-xmms
SUBPACKAGE?=
.  if !defined(PACKAGING)
LIB_DEPENDS+=	xmms.2::audio/xmms
.  endif
.else
CONFIGURE_ENV=	XMMS_CONFIG=/usr/bin/false
.endif

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	::devel/nasm
.endif

USE_LIBTOOL=	Yes	# included libtool is broken
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static

.if defined(PACKAGING) && ${SUBPACKAGE} == "-xmms"
LIB_DEPENDS=	FLAC.1::audio/flac
RUN_DEPENDS=	::audio/xmms
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
