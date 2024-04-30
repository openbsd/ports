COMMENT=	small SSH server and client

DISTNAME=	dropbear-2024.85
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	security net
FIX_EXTRACT_PERMISSIONS=Yes

HOMEPAGE=	https://matt.ucc.asn.au/dropbear/dropbear.html

# unrestrictive, mostly MIT-like, see LICENSE
PERMIT_PACKAGE=	Yes

WANTLIB += c util z

SITES=		https://matt.ucc.asn.au/dropbear/releases/

DEBUG_PACKAGES=	${BUILD_PACKAGES}
CONFIGURE_STYLE= gnu
USE_GMAKE=	Yes
NO_TEST=	Yes

.include <bsd.port.mk>
