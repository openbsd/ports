# $OpenBSD: Makefile,v 1.21 2002/12/29 20:19:11 fgsch Exp $

COMMENT=	"GNUstep/OPENSTEP property lists compatibility library"

DISTNAME=	libPropList-0.10.1
PKGNAME=	libproplist-0.10.1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_WINDOWMAKER:=libs/}

HOMEPAGE=	http://www.windowmaker.org/

MAINTAINER=	Jason Ish <ish@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltmain_sh \
		patch-*

USE_GMAKE=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libproplist
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/libproplist

.include <bsd.port.mk>
