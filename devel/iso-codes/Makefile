# $OpenBSD: Makefile,v 1.11 2008/03/19 15:18:49 jasper Exp $

COMMENT=	lists of the country, language and currency iso names

DISTNAME=	iso-codes-2.0

CATEGORIES=	devel

HOMEPAGE=	http://alioth.debian.org/projects/pkg-isocodes/
MASTER_SITES=	ftp://pkg-isocodes.alioth.debian.org/pub/pkg-isocodes/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

MODULES=	lang/python
MODPY_RUNDEP=	No

BUILD_DEPENDS=	:python-expat-${MODPY_VERSION}*:lang/python/${MODPY_VERSION},-expat

FAKE_FLAGS=	pkgconfigdir=${PREFIX}/lib/pkgconfig

post-extract:
	@perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},' \
		${WRKSRC}/{iso2pot.py,iso_3166/iso3166tab.py,iso_639/iso639tab.py}

.include <bsd.port.mk>
