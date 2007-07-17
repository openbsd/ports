# $OpenBSD: Makefile,v 1.1.1.1 2007/07/17 23:45:48 simon Exp $

COMMENT=	interface to libstatgrab system statistics library
SHARED_ONLY=	Yes

MODULES=	cpan
DISTNAME=	Unix-Statgrab-0.04
CATEGORIES=	sysutils perl5

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	statgrab

RUN_DEPENDS=	::sysutils/libstatgrab
BUILD_DEPENDS=	${RUN_DEPENDS}
REGRESS_DEPENDS=::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage

CONFIGURE_ARGS=	INC="-I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib -lstatgrab"

.include <bsd.port.mk>
