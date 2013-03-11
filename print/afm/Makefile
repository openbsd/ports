# $OpenBSD: Makefile,v 1.15 2013/03/11 11:37:53 espie Exp $

COMMENT=	Adobe Font Metrics

DISTNAME=	afm
PKGNAME=	afm-1.0
CATEGORIES=	print
MASTER_SITES=	ftp://sgi.com/sgi/fax/source/
EXTRACT_SUFX=	-tar.Z

PERMIT_PACKAGE_CDROM=	no obvious license
PERMIT_PACKAGE_FTP=	Yes

MAKE_ENV=	INSTALL_DATA="${INSTALL_DATA}"

pre-patch:
	@rm -rf ${WRKSRC}/RCS

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

.include <bsd.port.mk>
