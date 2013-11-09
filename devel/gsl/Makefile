# $OpenBSD: Makefile,v 1.34 2013/11/09 23:19:02 naddy Exp $

COMMENT=	GNU Scientific Library
BROKEN-vax =	missing ieeefp.h

DISTNAME=	gsl-1.15
REVISION=	1
SHARED_LIBS +=	gslcblas             1.0      # .0.0
SHARED_LIBS +=	gsl                  12.0     # .16.0

CATEGORIES=	devel

HOMEPAGE=	https://www.gnu.org/software/gsl/

MAINTAINER=	Can Erkin Acar <canacar@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m

MASTER_SITES=		${MASTER_SITE_GNU:=gsl/}

SEPARATE_BUILD=		Yes

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
