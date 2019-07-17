# $OpenBSD: Makefile,v 1.38 2019/07/17 14:49:20 danj Exp $

COMMENT=	GNU Scientific Library

DISTNAME=	gsl-1.15
REVISION=	3
SHARED_LIBS +=	gslcblas             1.0      # .0.0
SHARED_LIBS +=	gsl                  12.0     # .16.0

CATEGORIES=	devel

HOMEPAGE=	https://www.gnu.org/software/gsl/

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB=		c m

MASTER_SITES=		${MASTER_SITE_GNU:=gsl/}

SEPARATE_BUILD=		Yes

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
