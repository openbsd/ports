# $OpenBSD: Makefile,v 1.11 2004/02/22 22:21:01 naddy Exp $

COMMENT=	"library for arbitrary precision arithmetic"

DISTNAME=	gmp-4.1.2
CATEGORIES=	devel math

HOMEPAGE=	http://www.swox.com/gmp/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# (L)GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=gmp/}

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
# Don't try to optimize for the local CPU submodel
CONFIGURE_ARGS+= --build=${MACHINE_ARCH}-unknown-openbsd${OSrev}
CONFIGURE_ENV=	MAKEINFO="makeinfo --no-split"

post-extract:
	@rm -f ${WRKSRC}/gmp.info*

.include <bsd.port.mk>
