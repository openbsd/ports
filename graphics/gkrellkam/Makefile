# $OpenBSD: Makefile,v 1.3 2002/03/21 20:57:08 espie Exp $

COMMENT=	"image and webcam display plugin for gkrellm"

DISTNAME=	gkrellkam-0.2.3b
CATEGORIES=	graphics
NEED_VERSION=	1.515

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=	http://gkrellkam.sourceforge.net/
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= gkrellkam
DISTFILES=       gkrellkam_0.2.3b.tar.gz

MAINTAINER=	Dan Weeks <danimal@danimal.org>

USE_X11=	Yes
USE_GMAKE=	Yes

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

WRKDIST=	${WRKDIR}/gkrellkam-0.2.3b
BUILD_DEPENDS=	::sysutils/gkrellm
RUN_DEPENDS=	::sysutils/gkrellm \
		::net/wget

ALL_TARGET=	

do-install:
	@mkdir -p ${PREFIX}/lib/gkrellm/plugins
	${INSTALL_MAN} ${WRKSRC}/gkrellkam-list.5 \
	    ${PREFIX}/man/man5/gkrellkam.5
	${INSTALL_PROGRAM} ${WRKSRC}/gkrellkam.so \
	    ${PREFIX}/lib/gkrellm/plugins

.include <bsd.port.mk>
