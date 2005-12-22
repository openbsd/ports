# $OpenBSD: Makefile,v 1.18 2005/12/22 07:35:20 canacar Exp $

COMMENT=	"GNU Scientific Library"

DISTNAME=	gsl-1.7
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
