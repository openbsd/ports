# $OpenBSD: Makefile,v 1.1.1.1 2005/03/25 07:23:37 jolan Exp $
ONLY_FOR_ARCHS=	amd64 i386

COMMENT=	"tool for dumping DMI/SMBIOS contents in human-readable format"	
DISTNAME=	dmidecode-2.6
CATEGORIES=	sysutils
MASTER_SITES=	http://savannah.nongnu.org/download/dmidecode/

HOMEPAGE=	http://www.nongnu.org/dmidecode/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

NO_REGRESS=	Yes

WANTLIB=	c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dmidecode
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/dmidecode

.include <bsd.port.mk>
