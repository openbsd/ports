# $OpenBSD: Makefile,v 1.5 2001/06/07 20:17:49 naddy Exp $

COMMENT=	"free lossless audio codec"

PKGNAME=	${DISTNAME:S/-src//}
DISTNAME=	flac-0.10-src
CATEGORIES=	audio archivers
NEED_VERSION=	1.402
HOMEPAGE=	http://flac.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	flac

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS=	nasm::devel/nasm
.endif

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static
CONFIGURE_ENV=	XMMS_CONFIG=no
WRKDIST=	${WRKDIR}/${DISTNAME:S/-src//}

DOCDIR=		${PREFIX}/share/doc/flac

post-extract:
	@rm -rf ${WRKSRC}/obj

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${DOCDIR}
	${INSTALL_DATA_DIR} ${DOCDIR}/images
	${INSTALL_DATA} ${WRKSRC}/doc/images/*.gif ${DOCDIR}/images
	${INSTALL_DATA} ${WRKSRC}/doc/images/*.jpg ${DOCDIR}/images

.include <bsd.port.mk>
