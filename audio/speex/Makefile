# $OpenBSD: Makefile,v 1.15 2007/07/28 17:06:20 naddy Exp $

COMMENT=	"patent-free speech codec"

DISTNAME=	speex-1.2beta2
CATEGORIES=	audio
HOMEPAGE=	http://www.speex.org/
SHARED_LIBS +=	speex                6.0      # .5.0

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/speex/

LIB_DEPENDS=	ogg.>=5::audio/libogg
WANTLIB=	c m

USE_LIBTOOL=	Yes
AUTOCONF_VERSION=2.61
CONFIGURE_STYLE=autoconf
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-ogg=${LOCALBASE}

MAKE_FLAGS=	docdir=${TRUEPREFIX}/share/doc/speex \
		mandir=${TRUEPREFIX}/man
FAKE_FLAGS=	${MAKE_FLAGS} DESTDIR=${WRKINST}


.include <bsd.port.mk>
