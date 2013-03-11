# $OpenBSD: Makefile,v 1.26 2013/03/11 11:02:50 espie Exp $

COMMENT=	Jonathan's Own Version of Emacs

V=		4.16.0.73
DISTNAME=	jove${V}
PKGNAME=	jove-${V}
REVISION=	0
CATEGORIES=	editors

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	ftp://ftp.cs.toronto.edu/cs/ftp/pub/hugh/jove-dev/
EXTRACT_SUFX=	.tgz

WANTLIB=	c termcap

NO_TEST=	Yes
USE_GROFF=	Yes

.include <bsd.port.mk>
