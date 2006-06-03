# $OpenBSD: Makefile,v 1.5 2006/06/03 09:25:40 alek Exp $

SHARED_ONLY=	Yes

COMMENT=	"universal unicode codec using iconv for Python"

DISTNAME=	iconvcodec-1.1.2
PKGNAME=	py-${DISTNAME}p0
CATEGORIES=	converters

HOMEPAGE=	http://cjkpython.berlios.de/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://download.berlios.de/cjkpython/

MODPY_DISTUTILS_BUILDARGS=	--with-libiconv=${LOCALBASE}

NO_REGRESS=	Yes

MODULES=	lang/python converters/libiconv

.include <bsd.port.mk>
