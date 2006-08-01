# $OpenBSD: Makefile,v 1.10 2006/08/01 12:13:28 espie Exp $

COMMENT=	"patent-free speech codec"

DISTNAME=	speex-1.0.5
PKGNAME=	${DISTNAME}p0
CATEGORIES=	audio
HOMEPAGE=	http://www.speex.org/
SHARED_LIBS=	speex	4.0

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}download/

LIB_DEPENDS=	ogg.>=5::audio/libogg
WANTLIB=	c m

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-ogg-dir=${LOCALBASE}

MAKE_FLAGS=	docdir=${TRUEPREFIX}/share/doc/speex \
		mandir=${TRUEPREFIX}/man
FAKE_FLAGS=	${MAKE_FLAGS} DESTDIR=${WRKINST}


.include <bsd.port.mk>
