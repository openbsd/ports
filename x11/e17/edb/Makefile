# $OpenBSD: Makefile,v 1.5 2007/12/16 18:21:31 laurent Exp $

COMMENT=		database convenience library based on db 2.7.7
DISTNAME=		edb-20071211
SHARED_LIBS +=	edb                  0.0      # .1.5

MAINTAINER=		Laurent FANIS <laurent@humppa.nl>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c ncurses

CONFIGURE_STYLE=	automake autoconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS+=		--disable-gtk

.include <bsd.port.mk>
