# $OpenBSD: Makefile,v 1.22 2013/08/14 14:17:28 pascal Exp $

# WARNING: When trying to update this port to 4.x.x, please be
# aware that the following ports need adjustments for the new
# OTRv4 API:
# net/climm
# net/bitlbee,otr
# net/mcabber (diff ready)

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

LIB_DEPENDS=	security/libgcrypt

# non-shared does not inherit LIB_DEPENDS
LIB_DEPENDS +=	security/libgpg-error

USE_GROFF =		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

.include <bsd.port.mk>
