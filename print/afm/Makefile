# $OpenBSD: Makefile,v 1.11 2002/10/28 13:40:41 naddy Exp $

COMMENT=	"Adobe Font Metrics"

DISTNAME=	afm
PKGNAME=	afm-1.0
CATEGORIES=	print
MASTER_SITES=	ftp://sgi.com/sgi/fax/source/
EXTRACT_SUFX=	-tar.Z

MAINTAINER=	David Leonard <d@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no obvious license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no obvious license"
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	INSTALL_DATA="${INSTALL_DATA}"

pre-patch:
	@rm -rf ${WRKSRC}/RCS

NO_BUILD=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
