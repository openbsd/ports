# $OpenBSD: Makefile,v 1.5 2002/03/21 20:35:41 espie Exp $

COMMENT=	"GKrellM Sound Scope"

DISTNAME=	gkrellmss-0.2
CATEGORIES=	audio
NEED_VERSION=	1.515

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=	http://web.wt.net/~billw/gkrellmss/gkrellmss.html
MASTER_SITES=	http://web.wt.net/~billw/gkrellmss/

MAINTAINER=	David Lebel <lebel@openbsd.org>

USE_X11=	Yes
NO_REGRESS=	Yes

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

BUILD_DEPENDS=	::sysutils/gkrellm \
		::audio/esound
RUN_DEPENDS=	::sysutils/gkrellm \
		::audio/esound

LIB_DEPENDS+=	esd::audio/esound
ALL_TARGET=	
USE_GMAKE=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/gkrellm/plugins
	${INSTALL_PROGRAM} ${WRKSRC}/src/gkrellmss.so \
		           ${PREFIX}/lib/gkrellm/plugins

.include <bsd.port.mk>
