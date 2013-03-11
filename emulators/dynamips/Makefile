# $OpenBSD: Makefile,v 1.10 2013/03/11 11:06:04 espie Exp $

COMMENT=		cisco 3600/7200 platform emulator

DISTNAME=		dynamips-0.2.8-RC2
PKGNAME=		${DISTNAME:S/-RC/rc/}
REVISION=		4
CATEGORIES=		emulators

HOMEPAGE=		http://www.gns3.net/dynamips/
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gns-3/}

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS=		devel/libelf
WANTLIB=		c elf pcap pthread

MAKE_ENV=		DYNAMIPS_ARCH=${DYNAMIPS_ARCH}

USE_GMAKE=		Yes
USE_GROFF=		Yes
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
