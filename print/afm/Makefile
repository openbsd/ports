# $OpenBSD: Makefile,v 1.4 2000/02/16 10:52:12 espie Exp $

DISTNAME=	afm
PKGNAME=	afm-1.0
CATEGORIES=	print
MASTER_SITES=	ftp://sgi.com/sgi/fax/source/
EXTRACT_SUFX=	-tar.Z

MAINTAINER=	d@openbsd.org

MAKE_ENV=	INSTALL_DATA="${INSTALL_DATA}"

pre-patch:
	@rm -rf ${WRKSRC}/RCS

do-build:

.include <bsd.port.mk>
