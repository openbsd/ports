# $OpenBSD: Makefile,v 1.24 2011/11/13 09:22:31 jasper Exp $

COMMENT=	Jonathan's Own Version of Emacs

V=		4.16.0.73
DISTNAME=	jove${V}
PKGNAME=	jove-${V}
CATEGORIES=	editors

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.cs.toronto.edu/cs/ftp/pub/hugh/jove-dev/
EXTRACT_SUFX=	.tgz

WANTLIB=	c termcap

NO_REGRESS=	Yes
USE_GROFF=	Yes

.include <bsd.port.mk>
