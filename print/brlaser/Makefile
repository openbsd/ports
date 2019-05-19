# $OpenBSD: Makefile,v 1.3 2019/05/19 14:25:10 ajacoutot Exp $

COMMENT=	CUPS printer driver for some Brother laser printers

GH_ACCOUNT=	pdewacht
GH_PROJECT=	brlaser
GH_TAGNAME=	v5

CATEGORIES=	print

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM= Yes

WANTLIB+=	${COMPILER_LIBCXX} c cups cupsimage m

MODULES=	devel/cmake

COMPILER =	base-clang ports-gcc base-gcc

LIB_DEPENDS=	print/cups,-libs

.include <bsd.port.mk>
