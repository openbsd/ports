# $OpenBSD: Makefile,v 1.10 2001/06/20 01:43:34 pvalchev Exp $
# $FreeBSD: Makefile,v 1.2 1998/08/19 11:28:23 jseger Exp $
#

COMMENT=	"GNU system administration tool for networks"

DISTNAME=       cfengine-1.4.12
CATEGORIES=	sysutils
NEED_VERSION=	1.402

MAINTAINER=	ports@openbsd.org

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= cfengine

CONFIGURE_STYLE=	gnu dest
MAKE_ENV=	INSTALL_SCRIPT="${INSTALL_SCRIPT}"

.include <bsd.port.mk>
