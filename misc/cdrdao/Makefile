# $OpenBSD: Makefile,v 1.9 2001/03/05 08:12:04 fgsch Exp $

DISTNAME= 	cdrdao-1.1.4
CATEGORIES=	audio misc
NEED_VERSION=	1.358
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	cdrdao
DISTFILES=	${DISTNAME}.src${EXTRACT_SUFX}

HOMEPAGE=	http://www.ping.de/sites/daneb/

MAINTAINER=	Federico Schwindt <fgsch@openbsd.org>

# Only tested on i386
ONLY_FOR_ARCHS=	i386

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
