# $OpenBSD: Makefile,v 1.6 2002/03/21 20:46:24 espie Exp $

COMMENT=	"rpm2cpio, simple perl converter"

DISTNAME=	rpm2cpio-1.1
CATEGORIES=	converters archivers
NEED_VERSION=	1.515

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
NO_REGRESS=	Yes

do-install:
	${INSTALL_SCRIPT} ${FULLDISTDIR}/rpm2cpio ${PREFIX}/bin

.include <bsd.port.mk>
