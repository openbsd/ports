# $OpenBSD: Makefile,v 1.9 2000/02/12 08:02:07 turan Exp $

DISTNAME=	sharutils-4.2
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= sharutils

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--program-prefix=g --disable-uucode --disable-nls

post-patch:
	@touch ${WRKSRC}/po/sharutils.pot

post-install:
	@strip ${PREFIX}/bin/gshar
	@strip ${PREFIX}/bin/gunshar
	@install-info ${PREFIX}/info/remsync.info ${PREFIX}/info/dir
	@install-info ${PREFIX}/info/sharutils.info ${PREFIX}/info/dir

.include <bsd.port.mk>
