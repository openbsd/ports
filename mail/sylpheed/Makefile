# $OpenBSD: Makefile,v 1.38 2003/03/29 14:06:17 couderc Exp $

COMMENT=	"mail/news client in gtk+"

VERSION=	0.8.11
DISTNAME=	sylpheed-${VERSION}
CATEGORIES=    	mail news x11
HOMEPAGE=	http://sylpheed.good-day.net

MAINTAINER=	Damien Couderc <couderc@openbsd.org>

LIB_DEPENDS=	gdk_pixbuf.2::graphics/gdk-pixbuf

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/sylpheed/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-ssl --enable-ipv6 \
			--disable-imlib
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=	compface gpgme
FLAVOR?=

.if ${FLAVOR:L:Mcompface}
PERMIT_PACKAGE_CDROM=	"No Fee"
PERMIT_DISTFILES_CDROM=	"No Fee"
BUILD_DEPENDS=		::graphics/compface
.else
CONFIGURE_ARGS+=	--disable-compface
.endif

.if ${FLAVOR:L:Mgpgme}
LIB_DEPENDS=		gpgme.4::security/gpgme
CONFIGURE_ARGS+=	--enable-gpgme
.else
CONFIGURE_ARGS+=	--disable-gpgme
.endif

.include <bsd.port.mk>
