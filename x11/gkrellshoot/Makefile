# $OpenBSD: Makefile,v 1.1.1.1 2002/09/17 13:49:00 couderc Exp $

COMMENT=		"screen lock and capture plugin for gkrellm"

VERSION=		0.3.2
DISTNAME=		gkrellshoot-${VERSION}
CATEGORIES=		x11
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gkrellshoot/}

HOMEPAGE=		http://gkrellshoot.sourceforge.net/

MAINTAINER=		Margarida Sequeira <niness@devilness.org>

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
