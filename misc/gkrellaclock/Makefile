# $OpenBSD: Makefile,v 1.3 2002/03/21 21:09:18 espie Exp $

COMMENT=	"analog clock plugin for gkrellm"
V=		0.1
DISTNAME=	gkrellaclock-${V}
CATEGORIES=	misc
NEED_VERSION=	1.515

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=	http://www.geocities.com/m_muthukumar/gkrellaclock.html
MASTER_SITES=	http://www.geocities.com/m_muthukumar/

MAINTAINER=	David Lebel <lebel@openbsd.org>

USE_X11=	Yes

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

NO_REGRESS=	Yes
WRKDIST=	${WRKDIR}/gkrellAclock-${V}
BUILD_DEPENDS=	::sysutils/gkrellm
RUN_DEPENDS=	::sysutils/gkrellm
ALL_TARGET=	

do-install:
	@mkdir -p ${PREFIX}/lib/gkrellm/plugins
	${INSTALL_PROGRAM} ${WRKSRC}/gkrellaclock.so \
		${PREFIX}/lib/gkrellm/plugins

.include <bsd.port.mk>
