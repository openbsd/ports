# $OpenBSD: Makefile,v 1.4 2009/12/30 09:46:42 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	advanced IRC bouncer

DISTNAME=	znc-0.078
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=znc/}

HOMEPAGE=	http://znc.in/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c crypto m perl ssl stdc++ util

LIB_DEPENDS=	cares::net/libcares

SEPARATE_BUILD=	concurrent
USE_GMAKE=	Yes
NO_REGRESS=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-optimization

post-install:
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/znc

.include <bsd.port.mk>
