# $OpenBSD: Makefile,v 1.1.1.1 2001/03/28 12:27:20 naddy Exp $

COMMENT=	"free lossless audio codec"
NOT_FOR_ARCHS=	alpha

PKGNAME=	${DISTNAME:S/-src//}
DISTNAME=	flac-0.8-src
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
WRKDIST=	${WRKDIR}/${DISTNAME:S/-src//}
DOCDIR=		${PREFIX}/share/doc/flac

post-extract:
	@rm -rf ${WRKSRC}/obj

post-patch:
	@cd ${WRKSRC} && \
		touch aclocal.m4 configure.in && \
		automake -i

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${DOCDIR}
	${INSTALL_DATA_DIR} ${DOCDIR}/images
	${INSTALL_DATA} ${WRKSRC}/doc/images/* ${DOCDIR}/images

.include <bsd.port.mk>
