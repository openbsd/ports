# $OpenBSD: Makefile,v 1.12 2002/12/29 20:19:12 fgsch Exp $

COMMENT=	"Type 1 rasterizer library for UNIX/X11"

VERSION=	1.3.1
DISTNAME=	t1lib-${VERSION}
CATEGORIES=	devel textproc
MASTER_SITES=	${MASTER_SITE_SUNSITE:=libs/graphics/}

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/ac-tools
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

NO_REGRESS=	Yes

ALL_TARGET=	without_doc

post-patch:
	@cd ${WRKSRC}/ac-tools; \
	${PATCH} --forward --quiet -E < \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig && \
	${PATCH} --forward --quiet -E < \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh

.include <bsd.port.mk>
