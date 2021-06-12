# $OpenBSD: Makefile,v 1.43 2021/06/12 13:21:15 ajacoutot Exp $

COMMENT=		represent and manage a libvirt hypervisor connection

V=			7.4.0
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

LIB_DEPENDS=		sysutils/libvirt

RUN_DEPENDS=		textproc/p5-XML-XPath

# needs Test::CPAN::Changes
TEST_DEPENDS=		devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
