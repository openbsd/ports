# $OpenBSD: Makefile,v 1.3 2001/11/02 17:52:59 jcs Exp $

DISTNAME=	volume-0.8
PKGNAME=	gkrellm-${DISTNAME}
CATEGORIES=	audio
NEED_VERSION=	1.433

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"volume control plugin for gkrellm"
HOMEPAGE=	http://gkrellm.luon.net/volume.phtml
MASTER_SITES=	http://gkrellm.luon.net/files/

MAINTAINER=	Joshua Stein <jcs@rt.fm>

USE_X11=	Yes
NO_REGRESS=	Yes

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

WRKDIST=	${WRKDIR}/volume
BUILD_DEPENDS=	${LOCALBASE}/include/gkrellm/gkrellm.h::sysutils/gkrellm
RUN_DEPENDS=	gkrellm::sysutils/gkrellm
MAKE_FLAGS=	GKRELLM_INCLUDE="-I${LOCALBASE}/include" \
		SYSLIB="-lossaudio"

do-install:
	@mkdir -p ${PREFIX}/lib/gkrellm/plugins
	${INSTALL_PROGRAM} ${WRKSRC}/volume.so ${PREFIX}/lib/gkrellm/plugins

.include <bsd.port.mk>
