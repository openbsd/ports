# $OpenBSD: Makefile,v 1.22 2005/01/12 21:31:06 sturm Exp $

COMMENT=	"GNU system administration tool for networks"

V=		2.1.10
DISTNAME=      	cfengine-2.1.10
PKGNAME=	${DISTNAME}p1
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

LIB_DEPENDS=		lib/db4/db.=4:db-4.*:databases/db/v4

CONFIGURE_ENV=		ac_cv_lib_pthread_main=no

SUBST_VARS=		V

.include <bsd.port.mk>
