# $OpenBSD: Makefile,v 1.3 1999/08/02 04:38:26 brad Exp $

DISTNAME=	afm
PKGNAME=	afm-1.0
CATEGORIES=	print
MASTER_SITES=	ftp://sgi.com/sgi/fax/source/
EXTRACT_SUFX=	-tar.Z

MAINTAINER=	d@openbsd.org

MAKE_ENV=	INSTALL_DATA="${INSTALL_DATA}"

pre-patch:
	@${RM} -rf ${WRKSRC}/RCS

do-build:

.include <bsd.port.mk>
