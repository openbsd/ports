# $OpenBSD: Makefile,v 1.9 2015/04/05 12:17:01 rpe Exp $

COMMENT=	converter to/from quoted-printable encoding

DISTNAME=	qprint-1.1
CATEGORIES=	converters
HOMEPAGE=	http://www.fourmilab.ch/webtools/qprint/

# public domain
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=	${HOMEPAGE}

AUTOCONF_VERSION=	2.13
CONFIGURE_STYLE=	autoconf no-autoheader

ALL_TARGET=	prog
TEST_TARGET=	wringer

.include <bsd.port.mk>
