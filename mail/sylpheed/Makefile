# $OpenBSD: Makefile,v 1.50 2004/10/10 19:19:41 couderc Exp $

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

MASTER_SITES=	${HOMEPAGE}/sylpheed/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-ssl --enable-ipv6 \
			--disable-imlib
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

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
.else
CONFIGURE_ARGS+=	--disable-ldap
.endif

.include <bsd.port.mk>
