# $OpenBSD: Makefile,v 1.6 2000/10/22 16:09:13 espie Exp $

DISTNAME= 	cdrdao-1.1.3
CATEGORIES=	audio misc
NEED_VERSION=	1.305
MASTER_SITES=	http://www.ping.de/sites/daneb/
DISTFILES=	${DISTNAME}.src${EXTRACT_SUFX}

MAINTAINER=	Federico Schwindt <fgsch@openbsd.org>

# Only tested on i386
ONLY_FOR_ARCH=	i386

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		${PREFIX}/bin/antlr::devel/pccts

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=	--with-posix-threads=no

post-install:
	@strip ${PREFIX}/bin/cdrdao
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cdrdao
	cd ${WRKDIST} && ${INSTALL_DATA} README README.PlexDAE \
	    ${PREFIX}/share/doc/cdrdao

.include <bsd.port.mk>
