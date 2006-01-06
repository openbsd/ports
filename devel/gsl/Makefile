# $OpenBSD: Makefile,v 1.19 2006/01/06 20:30:26 bernd Exp $

COMMENT=	"GNU Scientific Library"

DISTNAME=	gsl-1.7
SHARED_LIBS=	gsl		8.0 \
		gslcblas	0.0

CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEWARE:=gsl/}
HOMEPAGE=	http://sources.redhat.com/gsl/

MAINTAINER=	Can Erkin Acar <canacar@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

CONFIGURE_STYLE=	gnu

SEPARATE_BUILD=		simple
USE_LIBTOOL=		Yes

.include <bsd.port.mk>
