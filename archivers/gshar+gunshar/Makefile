# $OpenBSD: Makefile,v 1.17 2001/04/20 17:35:33 brad Exp $

COMMENT=	"packing and unpacking of shell archives"

DISTNAME=	sharutils-4.2.1
CATEGORIES=	archivers
NEED_VERSION=	1.384
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= sharutils

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+= --program-prefix="g" --disable-uucode --disable-nls

post-patch:
	@touch ${WRKSRC}/po/sharutils.pot

.include <bsd.port.mk>
