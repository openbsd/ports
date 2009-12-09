# $OpenBSD: Makefile,v 1.5 2009/12/09 21:51:58 ajacoutot Exp $

COMMENT=		XML parser designed for Jabber applications
DISTNAME=		iksemel-1.3
PKGNAME=		${DISTNAME}p2

SHARED_LIBS=		iksemel		0.1	# .4.0

CATEGORIES=		textproc net

HOMEPAGE=		http://code.google.com/p/iksemel/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://iksemel.googlecode.com/files/

MODULES=		devel/gettext

WANTLIB=		c gcrypt gpg-error tasn1 z
LIB_DEPENDS=		gnutls.>=12::security/gnutls

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include"

# XXX check on update whether this is still necessary
post-extract:
	${INSTALL} -m 555 ${FILESDIR}/libgnutls-config ${WRKDIR}/bin

.include <bsd.port.mk>
