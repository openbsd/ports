# $OpenBSD: Makefile,v 1.24 2015/07/23 09:58:35 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		represent and manage a libvirt hypervisor connection

V=			1.2.17
DISTNAME=		Sys-Virt-$V
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
