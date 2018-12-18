# $OpenBSD: Makefile,v 1.1.1.1 2018/12/18 09:20:20 bentley Exp $

COMMENT=	converter to/from quoted-printable encoding

DISTNAME=	qprint-1.1
CATEGORIES=	converters
HOMEPAGE=	http://www.fourmilab.ch/webtools/qprint/
REVISION =	0

# public domain
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=	${HOMEPAGE}

AUTOCONF_VERSION=	2.13
CONFIGURE_STYLE=	autoconf no-autoheader

ALL_TARGET=	prog
TEST_TARGET=	wringer
# XXX misses configure test actually
CFLAGS += -DHAVE_GETOPT

.include <bsd.port.mk>
