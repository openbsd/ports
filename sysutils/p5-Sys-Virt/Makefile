# $OpenBSD: Makefile,v 1.31 2016/03/20 19:57:03 naddy Exp $

COMMENT=		represent and manage a libvirt hypervisor connection

V=			1.3.2
DISTNAME=		Sys-Virt-$V
CATEGORIES=		sysutils

HOMEPAGE=		https://libvirt.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan

MODCPAN_EXAMPLES=	Yes

WANTLIB =		perl virt
LIB_DEPENDS=		sysutils/libvirt>=$V

RUN_DEPENDS=		textproc/p5-XML-XPath

MAKE_ENV+=		TEST_POD=1

.include <bsd.port.mk>
