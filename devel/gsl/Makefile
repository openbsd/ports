# $OpenBSD: Makefile,v 1.32 2013/03/21 08:45:15 ajacoutot Exp $

COMMENT=	GNU Scientific Library

DISTNAME=	gsl-1.15
REVISION=	0
SHARED_LIBS +=	gslcblas             1.0      # .0.0
SHARED_LIBS +=	gsl                  12.0     # .16.0

CATEGORIES=	devel

HOMEPAGE=	http://www.gnu.org/software/gsl/

MAINTAINER=	Can Erkin Acar <canacar@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m

MASTER_SITES=		${MASTER_SITE_GNU:=gsl/}

SEPARATE_BUILD=		Yes

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
