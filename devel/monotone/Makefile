# $OpenBSD: Makefile,v 1.4 2007/12/18 22:04:32 deanna Exp $

COMMENT=	distributed version control system

VERSION=	0.35
DISTNAME=	monotone-${VERSION}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	devel

HOMEPAGE=	http://monotone.ca/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
WANTLIB += c m pthread stdc++ z

MASTER_SITES=	${HOMEPAGE}downloads/${VERSION}/

MODULES=	devel/gettext
LIB_DEPENDS=	boost_filesystem.>=0,boost_regex.>=0::devel/boost

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include"
REGRESS_FLAGS=	HOME=${WRKSRC}

.include <bsd.port.mk>
