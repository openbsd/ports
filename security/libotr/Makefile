# $OpenBSD: Makefile,v 1.3 2005/06/15 06:13:53 fgsch Exp $
# $FreeBSD: Makefile,v 1.2 2005/04/21 14:22:54 pav Exp $

COMMENT=	"The portable OTR Messaging Library and toolkit"

DISTNAME=	libotr-2.0.2
CATEGORIES=	security

HOMEPAGE=	http://www.cypherpunks.ca/otr/

MASTER_SITES=	${HOMEPAGE}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	gpg-error::security/libgpg-error \
		gcrypt::security/libgcrypt

CONFIGURE_STYLE=	gnu
USE_LIBTOOL=		Yes

MAN1=		otr_toolkit.1
MLINKS=		otr_toolkit.1 otr_parse.1 \
		otr_toolkit.1 otr_sesskeys.1 \
		otr_toolkit.1 otr_mackey.1 \
		otr_toolkit.1 otr_readforge.1 \
		otr_toolkit.1 otr_modify.1 \
		otr_toolkit.1 otr_remac.1

.include <bsd.port.mk>
