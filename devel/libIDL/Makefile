# $OpenBSD: Makefile,v 1.5 2000/03/05 18:30:25 espie Exp $

DISTNAME=	libIDL-0.6.5
CATEGORIES=	devel
NEED_VERSION=	1.223
MASTER_SITES=	ftp://ftp.mozilla.org/pub/mozilla/libraries/source/

MAINTAINER=	fgsch@openbsd.org

LIB_DEPENDS=	glib.1.2:devel/glib

USE_GMAKE=	Yes
GNU_CONFIGURE=	Yes

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libIDL
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/libIDL

.include <bsd.port.mk>
