# $OpenBSD: Makefile,v 1.7 2013/03/11 01:30:28 espie Exp $

COMMENT=	converter to/from quoted-printable encoding

DISTNAME=	qprint-1.0
CATEGORIES=	converters
HOMEPAGE=	http://www.fourmilab.ch/webtools/qprint/

# public domain
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=	${HOMEPAGE}

AUTOCONF_VERSION=	2.13
CONFIGURE_STYLE=	autoconf no-autoheader
USE_GROFF =	Yes

ALL_TARGET=	prog
TEST_TARGET=	wringer

.include <bsd.port.mk>
