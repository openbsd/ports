# $OpenBSD: Makefile,v 1.9 2020/06/27 18:02:13 sthen Exp $

COMMENT=	small SSH server and client

DISTNAME=	dropbear-2020.80
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	security net
FIX_EXTRACT_PERMISSIONS=Yes

HOMEPAGE=	https://matt.ucc.asn.au/dropbear/dropbear.html

# unrestrictive, mostly MIT-like, see LICENSE
PERMIT_PACKAGE=	Yes

WANTLIB += c util z

MASTER_SITES=	https://matt.ucc.asn.au/dropbear/releases/

DEBUG_PACKAGES=	${BUILD_PACKAGES}
CONFIGURE_STYLE= gnu
USE_GMAKE=	Yes
NO_TEST=	Yes

post-configure:
	${SUBST_CMD} ${WRKSRC}/default_options.h

.include <bsd.port.mk>
