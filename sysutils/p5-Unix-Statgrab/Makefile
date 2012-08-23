# $OpenBSD: Makefile,v 1.10 2012/08/23 15:52:47 sthen Exp $

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
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c statgrab

LIB_DEPENDS=	sysutils/libstatgrab

CONFIGURE_ARGS=	INC="-I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib -lstatgrab"

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
