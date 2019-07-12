# $OpenBSD: Makefile,v 1.7 2019/07/12 20:49:01 sthen Exp $

COMMENT=	small SSH server and client

DISTNAME=	dropbear-2019.78
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	security net
FIX_EXTRACT_PERMISSIONS=Yes

HOMEPAGE=	https://matt.ucc.asn.au/dropbear/dropbear.html

# unrestrictive, mostly MIT-like, see LICENSE
PERMIT_PACKAGE=	Yes

WANTLIB += c util z

MASTER_SITES=	https://matt.ucc.asn.au/dropbear/releases/

USE_GMAKE=	Yes
CONFIGURE_STYLE=	gnu
#NO_TEST=	Yes

post-configure:
	${SUBST_CMD} ${WRKSRC}/default_options.h

.include <bsd.port.mk>
