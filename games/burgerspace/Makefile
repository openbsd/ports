# $OpenBSD: Makefile,v 1.2 2001/11/23 21:35:18 pvalchev Exp $

COMMENT=	"burgertime clone for X"

VERSION=	1.5
DISTNAME=	burgerspace-${VERSION}
CATEGORIES=	games
NEED_VERSION=	1.433

HOMEPAGE=	http://www3.sympatico.ca/sarrazip/dev/burgerspace.html

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

#MASTER_SITES=	http://sites.netscape.net/sarrazip/
MASTER_SITES=	${MASTER_SITE_BACKUP}

LIB_DEPENDS=	gengameng.3.0:gengameng-*:devel/gengameng

USE_X11=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="${CPPFLAGS} -I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
