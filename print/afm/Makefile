# $OpenBSD: Makefile,v 1.10 2002/03/21 21:25:50 espie Exp $

COMMENT=	"Adobe Font Metrics"

DISTNAME=	afm
PKGNAME=	afm-1.0
CATEGORIES=	print
MASTER_SITES=	ftp://sgi.com/sgi/fax/source/
EXTRACT_SUFX=	-tar.Z
NEED_VERSION=	1.515

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
