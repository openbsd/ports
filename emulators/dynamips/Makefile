# $OpenBSD: Makefile,v 1.17 2019/07/12 20:46:08 sthen Exp $

COMMENT=		cisco 3600/7200 platform emulator

USE_WXNEEDED=		Yes

DISTNAME=		dynamips-0.2.8-RC2
PKGNAME=		${DISTNAME:S/-RC/rc/}
REVISION=		9
CATEGORIES=		emulators

HOMEPAGE=		http://www.gns3.net/dynamips/
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gns-3/}

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=		c elf>=2 pcap pthread

MAKE_ENV=		DYNAMIPS_ARCH=${DYNAMIPS_ARCH}

USE_GMAKE=		Yes
NO_TEST=		Yes

.if ${MACHINE_ARCH} == "i386"
DYNAMIPS_ARCH=	"x86"
.elif ${MACHINE_ARCH} == "amd64"
DYNAMIPS_ARCH=	"amd64"
.else
DYNAMIPS_ARCH=	"nojit"
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dynamips
.for i in ChangeLog README README.hypervisor TODO
	${INSTALL_DATA} ${WRKSRC}/$i ${PREFIX}/share/doc/dynamips
.endfor

.include <bsd.port.mk>
