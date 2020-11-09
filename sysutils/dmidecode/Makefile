# $OpenBSD: Makefile,v 1.12 2020/11/09 14:05:47 sthen Exp $

ONLY_FOR_ARCHS=	amd64 i386

COMMENT=	dump DMI/SMBIOS contents in human-readable format
DISTNAME=	dmidecode-3.3
EXTRACT_SUFX=	.tar.xz

CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=dmidecode/}

HOMEPAGE=	http://www.nongnu.org/dmidecode/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	c

MAKE_FLAGS=	CC="${CC}"
FAKE_FLAGS=	mandir="${PREFIX}/man"
NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dmidecode/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/dmidecode/

.include <bsd.port.mk>
