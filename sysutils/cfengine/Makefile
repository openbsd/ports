# $OpenBSD: Makefile,v 1.18 2004/08/13 19:25:42 brad Exp $

BROKEN=		"this version of cfengine has security problems"

COMMENT=	"GNU system administration tool for networks"

DISTNAME=      	cfengine-2.1.7p1
CATEGORIES=	sysutils

HOMEPAGE=	http://www.cfengine.org/

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.iu.hio.no/pub/cfengine/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-docs

LIB_DEPENDS=		lib/db4/db.4:db-4.*:databases/db/v4

CONFIGURE_ENV=		ac_cv_lib_pthread_main=no

.include <bsd.port.mk>
