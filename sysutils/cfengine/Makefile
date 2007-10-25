# $OpenBSD: Makefile,v 1.27 2007/10/25 21:05:33 steven Exp $

COMMENT=	GNU system administration tool for networks

DISTNAME=      	cfengine-2.2.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	sysutils

HOMEPAGE=	http://www.cfengine.org/

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto m pthread

MASTER_SITES=		ftp://ftp.iu.hio.no/pub/cfengine/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-docs

LIB_DEPENDS=		lib/db4/db.>=4:db-4.*:databases/db/v4

.include <bsd.port.mk>
