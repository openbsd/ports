# $OpenBSD: Makefile,v 1.15 2014/09/25 20:02:31 landry Exp $

COMMENT=	interface to libstatgrab system statistics library
SHARED_ONLY=	Yes

MODULES=	cpan
DISTNAME=	Unix-Statgrab-0.104
CATEGORIES=	sysutils

MAINTAINER=	William Yodlowsky <william@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c statgrab

LIB_DEPENDS=	sysutils/libstatgrab>=0.90

CONFIGURE_ARGS=	INC="-I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib -lstatgrab"

BUILD_DEPENDS=	devel/p5-Config-AutoConf
CONFIGURE_STYLE= modbuild
MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
