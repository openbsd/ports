# $OpenBSD: Makefile,v 1.17 2013/03/11 11:41:25 espie Exp $

COMMENT=	portable OTR messaging library and toolkit

DISTNAME=	libotr-3.2.1
CATEGORIES=	security

SHARED_LIBS +=  otr                  3.2      # 4.0

HOMEPAGE=	http://www.cypherpunks.ca/otr/

MASTER_SITES=	${HOMEPAGE}

MAINTAINER =	Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gcrypt gpg-error

MODULES=	devel/gettext

LIB_DEPENDS=	security/libgcrypt

USE_LIBTOOL=		Yes
USE_GROFF =		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

.include <bsd.port.mk>
