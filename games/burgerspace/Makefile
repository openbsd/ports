# $OpenBSD: Makefile,v 1.1.1.1 2001/08/07 05:13:34 pvalchev Exp $

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

MASTER_SITES=	http://sites.netscape.net/sarrazip/

LIB_DEPENDS=	gengameng.3.0:gengameng-*:devel/gengameng

USE_X11=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="${CPPFLAGS} -I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
