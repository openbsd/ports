# $OpenBSD: Makefile,v 1.7 2002/10/27 00:03:16 naddy Exp $

COMMENT=	"image and webcam display plugin for gkrellm"

DISTNAME=	gkrellkam-0.3.4
CATEGORIES=	graphics

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=	http://gkrellkam.sourceforge.net/
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=gkrellkam/}
DISTFILES=       gkrellkam_0.3.4.tar.gz

MAINTAINER=	Dan Weeks <danimal@danimal.org>

USE_X11=	Yes
USE_GMAKE=	Yes

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

WRKDIST=	${WRKDIR}/gkrellkam-0.3.4
BUILD_DEPENDS=	:gkrellm-*:sysutils/gkrellm
RUN_DEPENDS=	:gkrellm-*:sysutils/gkrellm \
		:wget-*:net/wget

ALL_TARGET=	

NO_REGRESS=	Yes

do-install:
	@mkdir -p ${PREFIX}/lib/gkrellm/plugins
	${INSTALL_MAN} ${WRKSRC}/gkrellkam-list.5 \
	    ${PREFIX}/man/man5/gkrellkam.5
	${INSTALL_PROGRAM} ${WRKSRC}/gkrellkam.so \
	    ${PREFIX}/lib/gkrellm/plugins

.include <bsd.port.mk>
