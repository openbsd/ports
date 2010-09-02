# $OpenBSD: Makefile,v 1.6 2010/09/02 08:53:20 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	advanced IRC bouncer

DISTNAME=	znc-0.094
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=znc/}

HOMEPAGE=	http://znc.in/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c cares crypto m perl ssl stdc++ util

LIB_DEPENDS=	::net/libcares

MAKE_FLAGS+=	VERBOSE=1

SEPARATE_BUILD=	concurrent
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-optimization

NO_REGRESS=	Yes

post-install:
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/znc

.include <bsd.port.mk>
