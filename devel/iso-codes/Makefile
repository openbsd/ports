# $OpenBSD: Makefile,v 1.3 2007/04/23 12:31:13 jasper Exp $

COMMENT=	"lists of the country, language and currency iso names"

DISTNAME=	iso-codes-1.0

CATEGORIES=	devel

HOMEPAGE=	http://alioth.debian.org/projects/pkg-isocodes/
MASTER_SITES=	ftp://pkg-isocodes.alioth.debian.org/pub/pkg-isocodes/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/python

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

BUILD_DEPENDS=	python-expat-2.4*:lang/python/2.4,-expat

FAKE_FLAGS=	DESTDIR=${WRKINST}  pkgconfigdir=${PREFIX}/lib/pkgconfig

post-extract:
	@perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},' \
		${WRKSRC}/{iso2pot.py,iso_3166/iso3166tab.py}

.include <bsd.port.mk>
