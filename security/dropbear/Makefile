# $OpenBSD: Makefile,v 1.4 2017/12/04 17:56:27 espie Exp $

COMMENT=	small SSH server and client

DISTNAME=	dropbear-2017.75
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	security net
FIX_EXTRACT_PERMISSIONS=Yes

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
