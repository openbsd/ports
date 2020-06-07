# $OpenBSD: Makefile,v 1.38 2020/06/07 15:59:49 ajacoutot Exp $

COMMENT=		represent and manage a libvirt hypervisor connection

V=			6.3.0
DISTNAME=		Sys-Virt-v${V}
PKGNAME=		p5-Sys-Virt-${V}

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
