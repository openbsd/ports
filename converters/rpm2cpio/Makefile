# $OpenBSD: Makefile,v 1.9 2007/09/16 01:40:28 merdely Exp $

COMMENT=	rpm2cpio, simple perl converter

DISTNAME=	rpm2cpio-1.2
CATEGORIES=	converters archivers
HOMEPAGE=	http://www.iagora.com/~espel/hacks.html

PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://www.iagora.com/~espel/

# In case other versions are released
DIST_SUBDIR=	${DISTNAME}
DISTFILES=	rpm2cpio

# don't extract, don't build. Install the script directly
EXTRACT_ONLY=	
NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${FULLDISTDIR}/rpm2cpio ${PREFIX}/bin

.include <bsd.port.mk>
