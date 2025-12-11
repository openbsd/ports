COMMENT=	lightweight C ACMEv2 client, uses external authenticators

#V=		1.7.6
GH_ACCOUNT=	ndilieto
GH_PROJECT=	uacme
#GH_TAGNAME=	upstream/$V
GH_COMMIT=	a7edb4cf63c271dc8dc31388ab138d486a10a840
DISTNAME=	uacme-1.7.6pl20250919
#DISTNAME=	uacme-$V

CATEGORIES=	security www

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto curl ssl

#CONFIGURE_STYLE= gnu
CONFIGURE_STYLE= autoreconf
AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.16
CONFIGURE_ARGS=	--with-openssl

LIB_DEPENDS=	net/curl
BUILD_DEPENDS=	textproc/asciidoc
USE_GMAKE=	Yes

.include <bsd.port.mk>
