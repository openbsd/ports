# $OpenBSD: Makefile,v 1.5 2002/10/29 19:48:58 naddy Exp $

COMMENT=	"weather display plugin for gkrellm"

DISTNAME=	gkrellweather-0.2.7
CATEGORIES=	x11

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=	http://www.cse.unsw.edu.au/~flam/programs/gkrellweather.html
MASTER_SITES=	http://www.cse.unsw.edu.au/~flam/repository/c/gkrellm/

MAINTAINER=	Aaron Campbell <aaron@openbsd.org>

USE_X11=	Yes

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

WRKDIST=	${WRKDIR}/gkrellweather-0.2.7
BUILD_DEPENDS=	:gkrellm-*:sysutils/gkrellm
RUN_DEPENDS=	${BUILD_DEPENDS} \
		:wget-*:net/wget
ALL_TARGET=	

NO_REGRESS=	Yes

do-install:
	@mkdir -p ${PREFIX}/lib/gkrellm/plugins
	${INSTALL_SCRIPT} ${WRKSRC}/GrabWeather ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/gkrellweather.so \
	    ${PREFIX}/lib/gkrellm/plugins

.include <bsd.port.mk>
