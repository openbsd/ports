# $FreeBSD: /repoman/r/pcvs/ports/security/libotr/Makefile,v 1.2 2005/04/21 14:22:54 pav Exp $

COMMENT=	"The portable OTR Messaging Library and toolkit"

VERSION=	2.0.1
DISTNAME=	libotr-${VERSION}
CATEGORIES=	security

HOMEPAGE=	http://www.cypherpunks.ca/otr/

MASTER_SITES=	${HOMEPAGE}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	gpg-error::security/libgpg-error \
		gcrypt::security/libgcrypt

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	gnu
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

MAN1=		otr_toolkit.1
MLINKS=		otr_toolkit.1 otr_parse.1 \
		otr_toolkit.1 otr_sesskeys.1 \
		otr_toolkit.1 otr_mackey.1 \
		otr_toolkit.1 otr_readforge.1 \
		otr_toolkit.1 otr_modify.1 \
		otr_toolkit.1 otr_remac.1

.include <bsd.port.mk>
