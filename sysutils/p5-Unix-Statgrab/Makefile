# $OpenBSD: Makefile,v 1.8 2010/11/20 17:22:41 espie Exp $

COMMENT=	interface to libstatgrab system statistics library
SHARED_ONLY=	Yes

MODULES=	cpan
DISTNAME=	Unix-Statgrab-0.04
REVISION=	2
CATEGORIES=	sysutils
USE_GROFF =	Yes

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB =	statgrab
LIB_DEPENDS=	sysutils/libstatgrab

CONFIGURE_ARGS=	INC="-I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib -lstatgrab"

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
