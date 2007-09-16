# $OpenBSD: Makefile,v 1.22 2007/09/16 02:52:59 merdely Exp $

COMMENT=	GNU Scientific Library

DISTNAME=	gsl-1.8
SHARED_LIBS +=	gslcblas             0.0      # .0.0
SHARED_LIBS +=	gsl                  9.0      # .9.0

CATEGORIES=	devel

HOMEPAGE=	http://www.gnu.org/software/gsl/

MAINTAINER=	Can Erkin Acar <canacar@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=	${MASTER_SITE_GNU:=gsl/}

CONFIGURE_STYLE=	gnu

SEPARATE_BUILD=		simple
USE_LIBTOOL=		Yes

.include <bsd.port.mk>
