# $OpenBSD: Makefile,v 1.22 2002/03/16 10:11:03 couderc Exp $

COMMENT=	"mail/news client in gtk+"

DISTNAME=	sylpheed-0.7.4
CATEGORIES=    	mail news x11
NEED_VERSION=	1.508
HOMEPAGE=	http://sylpheed.good-day.net

MAINTAINER=	Damien Couderc <couderc@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/sylpheed/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= --enable-ssl \
		--enable-ipv6
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
                LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=	compface gpgme imlib
FLAVOR?=

.if ${FLAVOR:L:Mcompface}
PERMIT_PACKAGE_CDROM=	"No Fee"
PERMIT_DISTFILES_CDROM=	"No Fee"
BUILD_DEPENDS=	${LOCALBASE}/lib/libcompface.a::graphics/compface
.else
CONFIGURE_ARGS+= --disable-compface
.endif

.if ${FLAVOR:L:Mgpgme}
LIB_DEPENDS=	gpgme.4::security/gpgme
CONFIGURE_ARGS+= --enable-gpgme
.else
CONFIGURE_ARGS+= --disable-gpgme
.endif

.if ${FLAVOR:L:Mimlib}
LIB_DEPENDS+=	gdk_imlib.19::graphics/imlib
CONFIGURE_ARGS+= --disable-gdk-pixbuf
.else
LIB_DEPENDS+=	gdk_pixbuf.2::graphics/gdk-pixbuf
CONFIGURE_ARGS+= --disable-imlib
.endif

.include <bsd.port.mk>
