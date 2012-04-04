# $OpenBSD: Makefile,v 1.14 2012/04/04 06:45:27 ajacoutot Exp $
# $FreeBSD: Makefile,v 1.2 2005/04/21 14:22:54 pav Exp $

COMMENT=	portable OTR messaging library and toolkit

DISTNAME=	libotr-3.2.0
CATEGORIES=	security
REVISION=	0

SHARED_LIBS +=  otr                  3.2      # 4.0

HOMEPAGE=	http://www.cypherpunks.ca/otr/

MASTER_SITES=	${HOMEPAGE}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c gcrypt gpg-error

MODULES=	devel/gettext

LIB_DEPENDS=	security/libgcrypt

USE_LIBTOOL=		Yes
USE_GROFF =		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

.include <bsd.port.mk>
