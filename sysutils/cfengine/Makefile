# $OpenBSD: Makefile,v 1.11 2001/10/01 13:07:45 heko Exp $
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

MASTER_SITES=       ftp://ftp.gnu.org/old-gnu/cfengine/

CONFIGURE_STYLE=	autoconf dest
MAKE_ENV=	INSTALL_SCRIPT="${INSTALL_SCRIPT}"

.include <bsd.port.mk>
