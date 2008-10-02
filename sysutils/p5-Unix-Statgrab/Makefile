# $OpenBSD: Makefile,v 1.3 2008/10/02 20:41:13 simon Exp $

COMMENT=	interface to libstatgrab system statistics library
SHARED_ONLY=	Yes

MODULES=	cpan
DISTNAME=	Unix-Statgrab-0.04
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	sysutils

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	statgrab::sysutils/libstatgrab

CONFIGURE_ARGS=	INC="-I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib -lstatgrab"

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
