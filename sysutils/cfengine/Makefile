# $OpenBSD: Makefile,v 1.14 2002/12/29 20:19:10 fgsch Exp $
# $FreeBSD: Makefile,v 1.2 1998/08/19 11:28:23 jseger Exp $
#

COMMENT=	"GNU system administration tool for networks"

DISTNAME=       cfengine-1.4.12
CATEGORIES=	sysutils

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=       ftp://ftp.gnu.org/old-gnu/cfengine/

CONFIGURE_STYLE=	autoconf dest
MAKE_ENV=	INSTALL_SCRIPT="${INSTALL_SCRIPT}"

BROKEN=		"this version of cfengine has security problems"

.include <bsd.port.mk>
