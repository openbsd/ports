# $OpenBSD: Makefile,v 1.4 1999/12/30 15:44:13 fgsch Exp $

DISTNAME=	libIDL-0.6.5
CATEGORIES=	devel
MASTER_SITES=	ftp://ftp.mozilla.org/pub/mozilla/libraries/source/

MAINTAINER=	fgsch@openbsd.org

LIB_DEPENDS=	glib.1.2:${PORTSDIR}/devel/glib

USE_GMAKE=	yes
GNU_CONFIGURE=	yes

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libIDL
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/libIDL

.include <bsd.port.mk>
