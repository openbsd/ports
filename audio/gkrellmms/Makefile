# $OpenBSD: Makefile,v 1.5 2001/11/10 15:00:47 espie Exp $

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
NO_REGRESS=	Yes

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

WRKDIST=	${WRKDIR}/gkrellmms
BUILD_DEPENDS=	::sysutils/gkrellm \
		::audio/xmms
RUN_DEPENDS=	::sysutils/gkrellm \
		::audio/xmms
LIB_DEPENDS+=	xmms::audio/xmms
ALL_TARGET=	

do-install:
	@mkdir -p ${PREFIX}/lib/gkrellm/plugins
	${INSTALL_PROGRAM} ${WRKSRC}/gkrellmms.so ${PREFIX}/lib/gkrellm/plugins

.include <bsd.port.mk>
