# $OpenBSD: Makefile,v 1.4 2007/12/02 18:18:10 bernd Exp $

COMMENT=		database convenience library based on db 2.7.7
DISTNAME=		edb-20071107
PKGNAME=		${DISTNAME}p0
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

.include <bsd.port.mk>
