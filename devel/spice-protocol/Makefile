# $OpenBSD: Makefile,v 1.11 2015/10/01 08:49:16 jasper Exp $

COMMENT=	SPICE protocol headers

DISTNAME=	spice-protocol-0.12.10
REVISION=	0
CATEGORIES=	devel net

HOMEPAGE=	http://www.spice-space.org/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/download/releases/
EXTRACT_SUFX=	.tar.bz2

MODULES=	lang/python

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/py-parsing \
		devel/py-six

CONFIGURE_STYLE=gnu

USE_GMAKE=	Yes

MODPY_ADJ_FILES=	spice_codegen.py

.include <bsd.port.mk>
