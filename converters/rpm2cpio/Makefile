# $OpenBSD: Makefile,v 1.1.1.1 2000/06/11 22:24:48 espie Exp $

DISTNAME=	rpm2cpio-1.0
CATEGORIES=	converters archivers
NEED_VERSION=	1.300

HOMEPAGE=	http://www.iagora.com/~espel/hacks.html
MASTER_SITES=	http://www.iagora.com/~espel/
# In case other versions are released
DIST_SUBDIR=	rpm2cpio-1.0
DISTFILES=	rpm2cpio

PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes



# don't extract, don't build. Install the script directly
EXTRACT_ONLY=	
NO_BUILD=	Yes

do-install:
	${INSTALL_SCRIPT} ${FULLDISTDIR}/rpm2cpio ${PREFIX}/bin

.include <bsd.port.mk>
