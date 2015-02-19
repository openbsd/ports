# $OpenBSD: Makefile,v 1.28 2015/02/19 12:42:06 naddy Exp $

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

BUILD_DEPENDS=	textproc/groff

NO_TEST=	Yes

.include <bsd.port.mk>
