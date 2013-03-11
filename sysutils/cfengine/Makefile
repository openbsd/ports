# $OpenBSD: Makefile,v 1.39 2013/03/11 11:41:29 espie Exp $

COMMENT=	GNU system administration tool for networks

DISTNAME=      	cfengine-2.2.10
REVISION=	2
CATEGORIES=	sysutils

HOMEPAGE=	http://www.cfengine.org/

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c crypto m pthread lib/db4/db>=4

MASTER_SITES=		${HOMEPAGE}/tarballs/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-docs
USE_GROFF =		Yes

LIB_DEPENDS=		databases/db/v4

.include <bsd.port.mk>
