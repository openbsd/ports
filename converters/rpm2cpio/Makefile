# $OpenBSD: Makefile,v 1.4 2001/06/02 12:45:39 espie Exp $

COMMENT=	"rpm2cpio, simple perl converter"

DISTNAME=	rpm2cpio-1.1
CATEGORIES=	converters archivers
NEED_VERSION=	1.402

HOMEPAGE=	http://www.iagora.com/~espel/hacks.html
MASTER_SITES=	http://www.iagora.com/~espel/ \
		ftp://quatramaran.ens.fr/pub/orabidoo/
		
# In case other versions are released
DIST_SUBDIR=	rpm2cpio-1.1
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
