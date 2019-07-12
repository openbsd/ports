# $OpenBSD: Makefile,v 1.4 2019/07/12 21:05:06 sthen Exp $

COMMENT=	CUPS printer driver for some Brother laser printers

GH_ACCOUNT=	pdewacht
GH_PROJECT=	brlaser
GH_TAGNAME=	v5

CATEGORIES=	print

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB+=	${COMPILER_LIBCXX} c cups cupsimage m

MODULES=	devel/cmake

COMPILER =	base-clang ports-gcc base-gcc

LIB_DEPENDS=	print/cups,-libs

.include <bsd.port.mk>
