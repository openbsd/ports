# $OpenBSD: Makefile,v 1.18 2017/11/15 21:28:05 sthen Exp $

COMMENT=	interface to libstatgrab system statistics library

MODULES=	cpan
DISTNAME=	Unix-Statgrab-0.109
REVISION=	0
CATEGORIES=	sysutils

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c perl statgrab

LIB_DEPENDS=	sysutils/libstatgrab>=0.90

CONFIGURE_ARGS=	INC="-I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib -lstatgrab"

BUILD_DEPENDS=	devel/p5-Config-AutoConf
MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
