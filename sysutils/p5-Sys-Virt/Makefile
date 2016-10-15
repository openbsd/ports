# $OpenBSD: Makefile,v 1.35 2016/10/15 19:14:19 jasper Exp $

COMMENT=		represent and manage a libvirt hypervisor connection

V=			1.3.5
DISTNAME=		Sys-Virt-$V
REVISION=		0
CATEGORIES=		sysutils

HOMEPAGE=		https://libvirt.org/

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan

MODCPAN_EXAMPLES=	Yes

WANTLIB =		perl virt
LIB_DEPENDS=		sysutils/libvirt>=$V

RUN_DEPENDS=		textproc/p5-XML-XPath

MAKE_ENV+=		TEST_POD=1

.include <bsd.port.mk>
