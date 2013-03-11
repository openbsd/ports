# $OpenBSD: Makefile,v 1.7 2013/03/11 11:41:30 espie Exp $
ONLY_FOR_ARCHS=	amd64 i386

COMMENT=	dump DMI/SMBIOS contents in human-readable format
DISTNAME=	dmidecode-2.10
CATEGORIES=	sysutils
MASTER_SITES=	http://savannah.nongnu.org/download/dmidecode/

HOMEPAGE=	http://www.nongnu.org/dmidecode/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

USE_GROFF =	Yes
NO_TEST=	Yes

WANTLIB=	c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dmidecode/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/dmidecode/

.include <bsd.port.mk>
