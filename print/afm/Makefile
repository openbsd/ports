# OpenBSD makefile for:    afm
# Version required:     1.0
# Date created:         25 Jan 1998
# Whom:                 d
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/02/08 05:25:06 niklas Exp $
#

DISTNAME=	afm
PKGNAME=	afm-1.0
CATEGORIES=	print

MASTER_SITES=	ftp://sgi.com/sgi/fax/source/
EXTRACT_SUFX=   -tar.Z

MAINTAINER=	david.leonard@dstc.edu.au

MAKE_ENV=	INSTALL_DATA="${INSTALL_DATA}"

pre-patch:
	@rm -rf ${WRKSRC}/RCS
do-build:

.include <bsd.port.mk>
