# $OpenBSD: Makefile,v 1.2 2002/11/22 02:37:37 margarida Exp $

COMMENT=		"screen lock and capture plugin for gkrellm"

VERSION=		0.3.2
DISTNAME=		gkrellshoot-${VERSION}
CATEGORIES=		x11

HOMEPAGE=		http://gkrellshoot.sourceforge.net/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gkrellshoot/}

MAINTAINER=		Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes

NO_REGRESS=		Yes

NOT_FOR_ARCHS=		${NO_SHARED_ARCHS}

ALL_TARGET=

WRKDIST=		${WRKDIR}/gkrellShoot-0.3.2

LIB_DEPENDS=		Magick.5::graphics/ImageMagick
BUILD_DEPENDS=		:gkrellm-*:sysutils/gkrellm
RUN_DEPENDS=		${BUILD_DEPENDS}

do-install:
	@mkdir -p ${PREFIX}/lib/gkrellm/plugins
	${INSTALL_PROGRAM} ${WRKSRC}/gkrellshoot.so \
	  ${PREFIX}/lib/gkrellm/plugins

.include <bsd.port.mk>
