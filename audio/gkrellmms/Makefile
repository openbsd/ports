# $OpenBSD: Makefile,v 1.3 2001/10/12 14:43:47 espie Exp $

DISTNAME=	gkrellmms-0.5.5
CATEGORIES=	audio
NEED_VERSION=	1.474

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"gkrellm plugin to control xmms"
HOMEPAGE=	http://gkrellm.luon.net/gkrellmms.phtml
MASTER_SITES=	http://gkrellm.luon.net/files/

MAINTAINER=	Joshua Stein <jcs@rt.fm>

USE_X11=	Yes

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

WRKDIST=	${WRKDIR}/gkrellmms
BUILD_DEPENDS=	${LOCALBASE}/include/gkrellm/gkrellm.h::sysutils/gkrellm \
		${LOCALBASE}/bin/xmms-config::audio/xmms
RUN_DEPENDS=	gkrellm::sysutils/gkrellm \
		xmms::audio/xmms
LIB_DEPENDS+=	xmms::audio/xmms
ALL_TARGET=	

do-install:
	@mkdir -p ${PREFIX}/lib/gkrellm/plugins
	${INSTALL_PROGRAM} ${WRKSRC}/gkrellmms.so ${PREFIX}/lib/gkrellm/plugins

.include <bsd.port.mk>
