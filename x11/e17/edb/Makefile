# $OpenBSD: Makefile,v 1.1.1.1 2007/11/30 16:04:39 dlg Exp $

COMMENT=		databse conveneince library based on db 2.7.7
DISTNAME=		edb-20071107
SHARED_LIBS +=	edb                  0.0      # .1.5

MAINTAINER=		Laurent FANIS <laurent@humppa.nl>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c ncurses

AUTOCONF_VERSION=	2.61
AUTOMAKE_VERSION=	1.9
AUTOMAKE_ENV=		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

CONFIGURE_STYLE=	automake autoconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	cd ${WRKSRC} && ${SETENV} ${AUTOMAKE_ENV} NOCONFIGURE=true \
		${SH} autogen.sh

.include <bsd.port.mk>
