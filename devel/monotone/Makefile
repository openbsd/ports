# $OpenBSD: Makefile,v 1.5 2008/04/03 07:47:45 bernd Exp $

COMMENT=	distributed version control system

VERSION=	0.39
DISTNAME=	monotone-${VERSION}
CATEGORIES=	devel

HOMEPAGE=	http://monotone.ca/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
WANTLIB += c m stdc++ z

MASTER_SITES=	${HOMEPAGE}downloads/${VERSION}/

MODULES=	devel/gettext
BUILD_DEPENDS=	::devel/boost

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include"
REGRESS_FLAGS=	HOME=${WRKSRC}

.include <bsd.port.mk>
