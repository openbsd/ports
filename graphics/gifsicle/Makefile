# $OpenBSD: Makefile,v 1.14 2001/03/25 18:17:18 jakob Exp $

COMMENT=	"creating & editing GIF images and animations"

DISTNAME=	gifsicle-1.25
CATEGORIES=    	graphics
NEED_VERSION=	1.363

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.lcdf.org/gifsicle/ \
			ftp://ftp.lcdf.org/pub/ \
			ftp://ftp.lcdf.org/pub/OLD-VERSIONS/

HOMEPAGE=		http://www.lcdf.org/gifsicle/

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		concurrent
USE_X11=		Yes

.include <bsd.port.mk>
