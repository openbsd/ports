# builds on aarch64 but for !x86 it requires code to lookup the entry
# point from EFI and only FreeBSD/Linux implementations are present.
ONLY_FOR_ARCHS=	amd64 i386

COMMENT=	dump DMI/SMBIOS contents in human-readable format
DISTNAME=	dmidecode-3.6
EXTRACT_SUFX=	.tar.xz

CATEGORIES=	sysutils

SITES=		${SITE_SAVANNAH:=dmidecode/}

HOMEPAGE=	https://www.nongnu.org/dmidecode/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	c

MAKE_FLAGS=	CC="${CC}"
FAKE_FLAGS=	mandir="${PREFIX}/man" \
		compdir="${PREFIX}/share/bash-completion/completions"
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
