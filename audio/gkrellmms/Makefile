# $OpenBSD: Makefile,v 1.8 2002/12/29 19:29:56 fgsch Exp $

DISTNAME=	gkrellmms-0.5.5
CATEGORIES=	audio

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"gkrellm plugin to control xmms"
HOMEPAGE=	http://gkrellm.luon.net/gkrellmms.phtml
MASTER_SITES=	http://gkrellm.luon.net/files/
MASTER_SITES0=	http://web.wt.net/~billw/gkrellm/Plugins/

MAINTAINER=	Joshua Stein <jcs@rt.fm>

USE_X11=	Yes
NO_REGRESS=	Yes

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

PATCHFILES=	gkrellmms-patch-0.5.5:0

WRKDIST=	${WRKDIR}/gkrellmms
BUILD_DEPENDS=	:gkrellm-*:sysutils/gkrellm \
		:xmms-*:audio/xmms
RUN_DEPENDS=	${BUILD_DEPENDS}
LIB_DEPENDS+=	xmms::audio/xmms
ALL_TARGET=	

do-install:
	@mkdir -p ${PREFIX}/lib/gkrellm/plugins
	${INSTALL_PROGRAM} ${WRKSRC}/gkrellmms.so ${PREFIX}/lib/gkrellm/plugins

.include <bsd.port.mk>
