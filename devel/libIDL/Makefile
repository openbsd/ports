# $OpenBSD: Makefile,v 1.8 2000/06/20 15:43:43 espie Exp $

DISTNAME=	libIDL-0.6.5
CATEGORIES=	devel
NEED_VERSION=	1.301
MASTER_SITES=	ftp://ftp.mozilla.org/pub/mozilla/libraries/source/ \
	http://atv.ne.mediaone.net/libIDL/

# LGPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MAINTAINER=	fgsch@openbsd.org

LIB_DEPENDS=	glib.1.2::devel/glib

FAKE=		Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libIDL
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/libIDL

.include <bsd.port.mk>
