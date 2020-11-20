# $OpenBSD: Makefile,v 1.13 2020/11/20 11:07:54 sthen Exp $

# builds on aarch64 but "No SMBIOS nor DMI entry point found, sorry" on at
# least od1000 and rpi4.
ONLY_FOR_ARCHS=	aarch64 amd64 i386

COMMENT=	dump DMI/SMBIOS contents in human-readable format
DISTNAME=	dmidecode-3.3
EXTRACT_SUFX=	.tar.xz
REVISION=	0

CATEGORIES=	sysutils

MASTER_SITES=	${MASTER_SITE_SAVANNAH:=dmidecode/}

HOMEPAGE=	https://www.nongnu.org/dmidecode/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	c

MAKE_FLAGS=	CC="${CC}"
FAKE_FLAGS=	mandir="${PREFIX}/man"
NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dmidecode/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/dmidecode/

.if ${MACHINE_ARCH} == amd64 || ${MACHINE_ARCH} == i386
PKG_ARGS+=	-Dx86=1
.else
PKG_ARGS+=	-Dx86=0
.endif

.include <bsd.port.mk>
