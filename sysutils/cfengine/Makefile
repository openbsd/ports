# $OpenBSD: Makefile,v 1.33 2010/11/11 19:00:48 espie Exp $

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

WANTLIB=		c crypto m pthread lib/db4/db.>=4

MASTER_SITES=		${HOMEPAGE}tarballs/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-docs
USE_GROFF =		Yes

LIB_DEPENDS=		:db->=4,<5:databases/db/v4

.include <bsd.port.mk>
