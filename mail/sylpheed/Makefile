# $OpenBSD: Makefile,v 1.52 2005/01/02 12:56:05 alek Exp $

COMMENT=	"mail/news client in gtk+"

VERSION=	0.9.99
DISTNAME=	sylpheed-${VERSION}
CATEGORIES=    	mail news x11
HOMEPAGE=	http://sylpheed.good-day.net

MAINTAINER=	Damien Couderc <couderc@openbsd.org>

LIB_DEPENDS=	gdk_pixbuf.2::graphics/gdk-pixbuf

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi c crypto gdk glib gmodule gtk iconv intl \
			jpeg m png pthread ssl tiff z

MASTER_SITES=	${HOMEPAGE}/sylpheed/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-ssl --enable-ipv6 \
			--disable-imlib
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread"

FLAVORS=	compface gpgme ldap
FLAVOR?=

.if ${FLAVOR:L:Mcompface}
PERMIT_PACKAGE_CDROM=	"No Fee"
PERMIT_DISTFILES_CDROM=	"No Fee"
LIB_DEPENDS+=		compface.1::mail/faces
.else
CONFIGURE_ARGS+=	--disable-compface
.endif

.if ${FLAVOR:L:Mgpgme}
LIB_DEPENDS+=		gpgme.4::security/gpgme
CONFIGURE_ARGS+=	--enable-gpgme
.else
CONFIGURE_ARGS+=	--disable-gpgme
.endif

.if ${FLAVOR:L:Mldap}
LIB_DEPENDS+=		ldap.2,lber.2::databases/openldap
CONFIGURE_ARGS+=	--enable-ldap
WANTLIB+=		gthread
.else
CONFIGURE_ARGS+=	--disable-ldap
.endif

.include <bsd.port.mk>
