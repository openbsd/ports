# $OpenBSD: Makefile,v 1.3 2002/03/21 21:25:55 espie Exp $

COMMENT=	"weather display plugin for gkrellm"

DISTNAME=	gkrellweather-0.2.7
CATEGORIES=	x11
NEED_VERSION=	1.515

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
BUILD_DEPENDS=	::sysutils/gkrellm
RUN_DEPENDS=	::sysutils/gkrellm ::net/wget
ALL_TARGET=	

do-install:
	@mkdir -p ${PREFIX}/lib/gkrellm/plugins
	${INSTALL_SCRIPT} ${WRKSRC}/GrabWeather ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/gkrellweather.so \
	    ${PREFIX}/lib/gkrellm/plugins

.include <bsd.port.mk>
