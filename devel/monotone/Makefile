# $OpenBSD: Makefile,v 1.8 2013/03/15 16:13:53 landry Exp $

COMMENT=	distributed version control system

VERSION=	0.39
DISTNAME=	monotone-${VERSION}
CATEGORIES=	devel
REVISION =	0

HOMEPAGE=	http://monotone.ca/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB += c m stdc++ z

MASTER_SITES=	${HOMEPAGE}downloads/${VERSION}/

MODULES=	devel/gettext
BUILD_DEPENDS=	devel/boost>=1.53.0

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include"
TEST_FLAGS=	HOME=${WRKSRC}

.include <bsd.port.mk>
