# $OpenBSD: Makefile,v 1.1.1.1 2007/11/30 16:04:39 dlg Exp $

COMMENT=	C like scripting language used in the Enlightenment project
DISTNAME=	embryo-20071107
SHARED_LIBS +=	embryo               0.0      # .9.1

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m

AUTOCONF_VERSION=	2.61
AUTOMAKE_VERSION=	1.9
AUTOMAKE_ENV=		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

CONFIGURE_STYLE=	automake
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	cd ${WRKSRC} && ${SETENV} ${AUTOMAKE_ENV} NOCONFIGURE=true \
		${SH} autogen.sh

.include <bsd.port.mk>
