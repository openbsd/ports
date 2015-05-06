# $OpenBSD: Makefile,v 1.20 2015/05/06 09:47:46 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		represent and manage a libvirt hypervisor connection

V=			1.2.15
DISTNAME=		Sys-Virt-$V
CATEGORIES=		sysutils

HOMEPAGE=		http://libvirt.org/

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
