# $OpenBSD: Makefile,v 1.12 2013/10/11 23:51:01 naddy Exp $

COMMENT=	interface to libstatgrab system statistics library
SHARED_ONLY=	Yes

MODULES=	cpan
DISTNAME=	Unix-Statgrab-0.04
REVISION=	4
CATEGORIES=	sysutils

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c statgrab

LIB_DEPENDS=	sysutils/libstatgrab

CONFIGURE_ARGS=	INC="-I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib -lstatgrab"

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
