# $OpenBSD: Makefile,v 1.4 2004/07/27 19:35:20 naddy Exp $

COMMENT=	"patent-free speech codec"

DISTNAME=	speex-1.0.4
CATEGORIES=	audio
HOMEPAGE=	http://www.speex.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}download/

LIB_DEPENDS=	ogg.4::audio/libogg

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-ogg-dir=${LOCALBASE}

FAKE_FLAGS=	${DESTDIRNAME}=${WRKINST} \
		docdir=${PREFIX}/share/doc/speex \
		mandir=${PREFIX}/man

.include <bsd.port.mk>
