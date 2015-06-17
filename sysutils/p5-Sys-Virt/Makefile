# $OpenBSD: Makefile,v 1.22 2015/06/17 10:21:27 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		represent and manage a libvirt hypervisor connection

V=			1.2.16
DISTNAME=		Sys-Virt-$V
REVISION=		0
CATEGORIES=		sysutils

HOMEPAGE=		https://libvirt.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan

MODCPAN_EXAMPLES=	Yes

WANTLIB =		virt
LIB_DEPENDS=		sysutils/libvirt>=$V

RUN_DEPENDS=		textproc/p5-XML-XPath

MAKE_ENV+=		TEST_POD=1

.include <bsd.port.mk>
