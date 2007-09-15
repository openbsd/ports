# $OpenBSD: Makefile,v 1.8 2007/09/15 23:29:58 merdely Exp $
# $FreeBSD: Makefile,v 1.2 2005/04/21 14:22:54 pav Exp $

COMMENT=	The portable OTR Messaging Library and toolkit

DISTNAME=	libotr-3.0.0
PKGNAME=	${DISTNAME}p0
CATEGORIES=	security
SHARED_LIBS=	otr	3.0
LIBotr_ALIAS=	realotr

HOMEPAGE=	http://www.cypherpunks.ca/otr/

MASTER_SITES=	${HOMEPAGE}

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

MAN1=		otr_toolkit.1
MLINKS=		otr_toolkit.1 otr_parse.1 \
		otr_toolkit.1 otr_sesskeys.1 \
		otr_toolkit.1 otr_mackey.1 \
		otr_toolkit.1 otr_readforge.1 \
		otr_toolkit.1 otr_modify.1 \
		otr_toolkit.1 otr_remac.1

.include <bsd.port.mk>
