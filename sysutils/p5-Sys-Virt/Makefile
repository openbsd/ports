# $OpenBSD: Makefile,v 1.41 2021/04/02 09:09:52 ajacoutot Exp $

PORTROACH=		skipv:4.0.0,4.1.0,4.2.0

COMMENT=		represent and manage a libvirt hypervisor connection

V=			7.2.0
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
