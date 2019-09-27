# $OpenBSD: Makefile,v 1.5 2019/09/27 12:49:57 ajacoutot Exp $

COMMENT=	CUPS printer driver for some Brother laser printers

GH_ACCOUNT=	pdewacht
GH_PROJECT=	brlaser
GH_TAGNAME=	v6

CATEGORIES=	print

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB+=	${COMPILER_LIBCXX} c cups m

MODULES=	devel/cmake

COMPILER =	base-clang ports-gcc base-gcc

LIB_DEPENDS=	print/cups,-libs

.include <bsd.port.mk>
