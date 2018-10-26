# $OpenBSD: Makefile,v 1.1.1.1 2018/10/26 13:57:08 jcs Exp $

COMMENT=	CUPS printer driver for some Brother laser printers

GH_ACCOUNT=	pdewacht
GH_PROJECT=	brlaser
GH_TAGNAME=	v4

CATEGORIES=	print

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM= Yes

WANTLIB+=	${COMPILER_LIBCXX} c cups cupsimage m

MODULES=	devel/cmake

COMPILER =	base-clang ports-gcc base-gcc

LIB_DEPENDS=	print/cups,-libs

.include <bsd.port.mk>
