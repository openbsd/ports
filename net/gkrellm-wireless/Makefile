# $OpenBSD: Makefile,v 1.3 2002/06/09 05:37:04 wilfried Exp $

DISTNAME=	gkrellmwireless-0.2.2
PKGNAME=	gkrellm-wireless-0.2.2
CATEGORIES=	net x11
NEED_VERSION=	1.522

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"gkrellm plugin to view wireless link stats"
HOMEPAGE=	http://gkrellm.luon.net/gkrellmwireless.phtml
MASTER_SITES=	http://gkrellm.luon.net/files/

MAINTAINER=	Joshua Stein <jcs@rt.fm>

USE_X11=	Yes
NO_REGRESS=	Yes

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

BUILD_DEPENDS=	:gkrellm-*:sysutils/gkrellm
RUN_DEPENDS=	${BUILD_DEPENDS}
ALL_TARGET=	

do-install:
	@mkdir -p ${PREFIX}/lib/gkrellm/plugins
	${INSTALL_PROGRAM} ${WRKSRC}/wireless.so ${PREFIX}/lib/gkrellm/plugins

.include <bsd.port.mk>
