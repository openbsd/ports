# OpenBSD makefile for:    SWIG
# Version required:     1.1b5p1
# Date created:         1 Dec 1997
# Whom:                 ejovi
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/12/01 22:23:25 joey Exp $
#

DISTNAME=	swig1.1
PKGNAME=	swig-1.1
CATEGORIES=	devel
MASTER_SITES=	ftp://ftp.cs.utah.edu/pub/beazley/SWIG/

MAINTAINER=	joey@OpenBSD.ORG

WRKSRC=		${WRKDIR}/SWIG1.1
GNU_CONFIGURE=	yes

post-build:
	@cd ${WRKSRC}; make runtime

.include <bsd.port.mk>
