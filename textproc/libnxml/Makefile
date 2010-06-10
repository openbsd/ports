# $OpenBSD: Makefile,v 1.2 2010/06/10 21:37:32 ajacoutot Exp $

COMMENT =		XML manipulation library

VERSION =		0.18.3
DISTNAME =		libnxml-${VERSION}
PKGNAME =		${DISTNAME}p0
CATEGORIES =		textproc
MASTER_SITES =		http://www.autistici.org/bakunin/libnxml/
SHARED_LIBS =		nxml 0.0 # 18.3

HOMEPAGE=	${MASTER_SITES}/doc

# LGPL v2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS =		curl::net/curl
WANTLIB +=		crypto idn ssl z

MODULES =		devel/gettext

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
