# $OpenBSD: Makefile,v 1.11 2001/05/10 03:21:59 fgsch Exp $

COMMENT=	"write audio/data CD-Rs in disk-at-once mode"

DISTNAME= 	cdrdao-1.1.5
CATEGORIES=	audio misc
NEED_VERSION=	1.406
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	cdrdao
DISTFILES=	${DISTNAME}.src${EXTRACT_SUFX}

HOMEPAGE=	http://cdrdao.sourceforge.net/

MAINTAINER=	Federico Schwindt <fgsch@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		${PREFIX}/bin/antlr::devel/pccts

USE_GMAKE=		Yes
CONFIGURE_STYLE=	autoconf dest
CONFIGURE_ARGS+=	--with-posix-threads=no

post-install:
	@strip ${PREFIX}/bin/cdrdao
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cdrdao
	cd ${WRKDIST} && ${INSTALL_DATA} README README.PlexDAE \
	    ${PREFIX}/share/doc/cdrdao

.include <bsd.port.mk>
