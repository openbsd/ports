# $OpenBSD: Makefile,v 1.1.1.1 2007/01/08 15:20:12 robert Exp $

COMMENT=	"lists of the country, language and currency iso names"

V=		0.58
DISTNAME=	iso-codes-${V}
DISTFILES=	iso-codes_${V}-1.tar.gz

CATEGORIES=	devel

HOMEPAGE=	http://alioth.debian.org/projects/pkg-isocodes/
MASTER_SITES=	ftp://ftp.debian.org/debian/pool/main/i/iso-codes/ \
		http://ftp.hu.debian.org/debian/pool/main/i/iso-codes/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/python

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

BUILD_DEPENDS=	python-expat-2.4*:lang/python/2.4,-expat

.include <bsd.port.mk>
