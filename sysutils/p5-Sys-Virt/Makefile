COMMENT=		represent and manage a libvirt hypervisor connection

V=			11.2.0
DISTNAME=		Sys-Virt-v${V}
PKGNAME=		p5-Sys-Virt-${V}

SUBST_VARS=		DISTNAME

CATEGORIES=		sysutils

HOMEPAGE=		https://libvirt.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl virt

MODULES=		cpan

MODCPAN_EXAMPLES=	Yes

CONFIGURE_STYLE=	modbuild

BUILD_DEPENDS=		devel/p5-Module-Build

LIB_DEPENDS=		sysutils/libvirt

RUN_DEPENDS=		textproc/p5-XML-XPath

# needs Test::CPAN::Changes
TEST_DEPENDS=		devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
