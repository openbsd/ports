# $OpenBSD: Makefile,v 1.11 2013/03/11 11:41:31 espie Exp $

COMMENT=	interface to libstatgrab system statistics library
SHARED_ONLY=	Yes

MODULES=	cpan
DISTNAME=	Unix-Statgrab-0.04
REVISION=	4
CATEGORIES=	sysutils
USE_GROFF =	Yes

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c statgrab

LIB_DEPENDS=	sysutils/libstatgrab

CONFIGURE_ARGS=	INC="-I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib -lstatgrab"

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
