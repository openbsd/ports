# $OpenBSD: Makefile,v 1.25 2012/03/18 17:02:00 naddy Exp $

COMMENT=	Jonathan's Own Version of Emacs

V=		4.16.0.73
DISTNAME=	jove${V}
PKGNAME=	jove-${V}
REVISION=	0
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
