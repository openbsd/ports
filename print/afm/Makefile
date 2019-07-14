# $OpenBSD: Makefile,v 1.17 2019/07/14 00:39:39 naddy Exp $

COMMENT=	Adobe Font Metrics

DISTNAME=	afm
PKGNAME=	afm-1.0
CATEGORIES=	print
MASTER_SITES=	ftp://sgi.com/sgi/fax/source/
EXTRACT_SUFX=	-tar.Z

PERMIT_PACKAGE=	Yes

MAKE_ENV=	INSTALL_DATA="${INSTALL_DATA}"

pre-patch:
	rm -rf ${WRKSRC}/RCS

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

.include <bsd.port.mk>
