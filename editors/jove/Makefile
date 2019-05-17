# $OpenBSD: Makefile,v 1.29 2019/05/17 16:19:38 sthen Exp $

COMMENT=	Jonathan's Own Version of Emacs

V=		4.16.0.73
DISTNAME=	jove${V}
PKGNAME=	jove-${V}
REVISION=	1
CATEGORIES=	editors

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c curses

MASTER_SITES=	ftp://ftp.cs.toronto.edu/cs/ftp/pub/hugh/jove-dev/
EXTRACT_SUFX=	.tgz


BUILD_DEPENDS=	textproc/groff

NO_TEST=	Yes

.include <bsd.port.mk>
