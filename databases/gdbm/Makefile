# $OpenBSD: Makefile,v 1.28 2010/09/01 09:17:42 sthen Exp $

COMMENT=		GNU dbm

VERSION=		1.8.3
DISTNAME=		gdbm-${VERSION}
REVISION=		0
CATEGORIES=		databases

SHARED_LIBS +=	gdbm                 3.0      # .0.0

HOMEPAGE=		http://www.gnu.org/software/gdbm/

MASTER_SITES=		${MASTER_SITE_GNU:=gdbm/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=		Yes

CONFIGURE_STYLE= 	gnu dest
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}

NO_REGRESS=	Yes

.include <bsd.port.mk>
