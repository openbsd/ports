# $OpenBSD: Makefile,v 1.2 2016/09/21 10:06:27 sthen Exp $

COMMENT=	small SSH server and client

DISTNAME=	dropbear-2016.74
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	security net

HOMEPAGE=	https://matt.ucc.asn.au/dropbear/dropbear.html

# unrestrictive, mostly MIT-like, see LICENSE
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c util z

MASTER_SITES=	https://matt.ucc.asn.au/dropbear/releases/

USE_GMAKE=	Yes
CONFIGURE_STYLE=	gnu
#NO_TEST=	Yes

post-configure:
	${SUBST_CMD} ${WRKSRC}/options.h

.include <bsd.port.mk>
