# $OpenBSD: Makefile,v 1.13 2004/02/01 20:40:45 sturm Exp $

COMMENT=	"Adobe Font Metrics"

DISTNAME=	afm
PKGNAME=	afm-1.0
CATEGORIES=	print
MASTER_SITES=	ftp://sgi.com/sgi/fax/source/
EXTRACT_SUFX=	-tar.Z

PERMIT_PACKAGE_CDROM=	"no obvious license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no obvious license"
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	INSTALL_DATA="${INSTALL_DATA}"

pre-patch:
	@rm -rf ${WRKSRC}/RCS

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

.include <bsd.port.mk>
