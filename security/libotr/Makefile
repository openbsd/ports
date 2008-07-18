# $OpenBSD: Makefile,v 1.10 2008/07/18 13:21:22 dhill Exp $
# $FreeBSD: Makefile,v 1.2 2005/04/21 14:22:54 pav Exp $

COMMENT=	The portable OTR Messaging Library and toolkit

DISTNAME=	libotr-3.2.0
CATEGORIES=	security
SHARED_LIBS=	otr	3.2

HOMEPAGE=	http://www.cypherpunks.ca/otr/

MASTER_SITES=	${HOMEPAGE}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext
LIB_DEPENDS=	gpg-error::security/libgpg-error \
		gcrypt::security/libgcrypt
WANTLIB=	c

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
USE_LIBTOOL=		Yes

.include <bsd.port.mk>
