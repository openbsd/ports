# $OpenBSD: Makefile,v 1.2 2001/10/12 14:43:47 espie Exp $

COMMENT=	"GKrellM Sound Scope"

DISTNAME=	gkrellmss-0.2
CATEGORIES=	audio
NEED_VERSION=	1.474

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=	http://web.wt.net/~billw/gkrellmss/gkrellmss.html
MASTER_SITES=	http://web.wt.net/~billw/gkrellmss/

MAINTAINER=	David Lebel <lebel@openbsd.org>

USE_X11=	Yes

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

BUILD_DEPENDS=	${LOCALBASE}/include/gkrellm/gkrellm.h::sysutils/gkrellm \
		${LOCALBASE}/bin/esd-config::audio/esound
RUN_DEPENDS=	gkrellm::sysutils/gkrellm \
		esd::audio/esound

LIB_DEPENDS+=	esd::audio/esound
ALL_TARGET=	
USE_GMAKE=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/gkrellm/plugins
	${INSTALL_PROGRAM} ${WRKSRC}/src/gkrellmss.so \
		           ${PREFIX}/lib/gkrellm/plugins

.include <bsd.port.mk>
