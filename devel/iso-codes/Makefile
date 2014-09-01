# $OpenBSD: Makefile,v 1.44 2014/09/01 21:30:39 jasper Exp $

COMMENT=	lists of the country, language and currency iso names

DISTNAME=	iso-codes-3.56

CATEGORIES=	devel

HOMEPAGE=	http://alioth.debian.org/projects/pkg-isocodes/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://pkg-isocodes.alioth.debian.org/downloads/
EXTRACT_SUFX=	.tar.xz

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

MODULES=	lang/python
MODPY_RUNDEP=	No
MODPY_ADJ_FILES=iso2pot.py

BUILD_DEPENDS=	devel/gettext

.include <bsd.port.mk>
