# $OpenBSD: Makefile,v 1.26 2006/10/28 11:19:20 espie Exp $

COMMENT=		"GNU dbm"

VERSION=		1.8.3
DISTNAME=		gdbm-${VERSION}
PKGNAME=		${DISTNAME}p0
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
