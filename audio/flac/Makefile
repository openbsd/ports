# $OpenBSD: Makefile,v 1.2 2001/05/18 19:14:38 naddy Exp $

COMMENT=	"free lossless audio codec"
NOT_FOR_ARCHS=	alpha

PKGNAME=	${DISTNAME:S/-src//}
DISTNAME=	flac-0.9-src
CATEGORIES=	audio archivers
NEED_VERSION=	1.365
HOMEPAGE=	http://flac.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	flac

BUILD_DEPENDS=	automake::devel/automake

CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static
CONFIGURE_ENV=	XMMS_CONFIG=no
WRKDIST=	${WRKDIR}/${DISTNAME:S/-src//}
DOCDIR=		${PREFIX}/share/doc/flac

post-extract:
	@rm -rf ${WRKSRC}/obj

# incomplete aclocal.m4
post-patch:
	@cd ${WRKSRC} && \
		touch aclocal.m4 configure.in && \
		automake -i

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${DOCDIR}
	${INSTALL_DATA_DIR} ${DOCDIR}/images
	${INSTALL_DATA} ${WRKSRC}/doc/images/*.gif ${DOCDIR}/images
	${INSTALL_DATA} ${WRKSRC}/doc/images/*.jpg ${DOCDIR}/images

.include <bsd.port.mk>
