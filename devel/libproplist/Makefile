# $OpenBSD: Makefile,v 1.23 2006/04/05 04:37:00 sturm Exp $

COMMENT=	"GNUstep/OPENSTEP property lists compatibility library"

DISTNAME=	libPropList-0.10.1
PKGNAME=	libproplist-0.10.1p1
SHARED_LIBS=		PropList 2.2
MODGNU_SHARED_LIBS=	PropList ''

CATEGORIES=	devel

HOMEPAGE=	http://www.windowmaker.info/

MAINTAINER=	Jason Ish <ish@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libproplist
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/libproplist

.include <bsd.port.mk>
