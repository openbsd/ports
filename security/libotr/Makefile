# $OpenBSD: Makefile,v 1.20 2013/07/08 04:17:01 brad Exp $

COMMENT=	portable OTR messaging library and toolkit

DISTNAME=	libotr-3.2.1
CATEGORIES=	security
REVISION =	0

SHARED_LIBS +=  otr                  3.2      # 4.0

HOMEPAGE=	http://www.cypherpunks.ca/otr/

MASTER_SITES=	${HOMEPAGE}

MAINTAINER =	Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gcrypt gpg-error

MODULES=	devel/gettext

LIB_DEPENDS=	security/libgcrypt \
		security/libgpg-error

USE_GROFF =		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

.include <bsd.port.mk>
