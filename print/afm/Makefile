# $OpenBSD: Makefile,v 1.9 2001/05/06 03:19:48 lebel Exp $

COMMENT=	"Adobe Font Metrics"

DISTNAME=	afm
PKGNAME=	afm-1.0
CATEGORIES=	print
MASTER_SITES=	ftp://sgi.com/sgi/fax/source/
EXTRACT_SUFX=	-tar.Z
NEED_VERSION=	1.402

MAINTAINER=	David Leonard <d@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no obvious license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no obvious license"
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	INSTALL_DATA="${INSTALL_DATA}"

pre-patch:
	@rm -rf ${WRKSRC}/RCS

do-build:

.include <bsd.port.mk>
