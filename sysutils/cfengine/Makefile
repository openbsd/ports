# $OpenBSD: Makefile,v 1.31 2009/09/01 14:25:15 okan Exp $

COMMENT=	GNU system administration tool for networks

DISTNAME=      	cfengine-2.2.10
CATEGORIES=	sysutils

HOMEPAGE=	http://www.cfengine.org/

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c crypto m pthread

MASTER_SITES=		${HOMEPAGE}tarballs/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-docs

LIB_DEPENDS=		lib/db4/db.>=4:db->=4,<5:databases/db/v4

.include <bsd.port.mk>
