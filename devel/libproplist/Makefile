# $OpenBSD: Makefile,v 1.19 2002/05/13 18:50:40 espie Exp $

COMMENT=	"GNUstep/OPENSTEP property lists compatibility library"

DISTNAME=	libPropList-0.10.1
PKGNAME=	libproplist-0.10.1
CATEGORIES=	devel
NEED_VERSION=	1.475
MASTER_SITES=	${MASTER_SITE_WINDOWMAKER:=libs/}

HOMEPAGE=	http://www.windowmaker.org/

MAINTAINER=	Jason Ish <jasoni@openbsd.org>

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
