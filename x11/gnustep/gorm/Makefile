# $OpenBSD: Makefile,v 1.22 2019/10/16 13:45:05 ajacoutot Exp $

COMMENT=	GNUstep graphical object relationship modeller

DISTNAME=	gorm-1.2.24
HOMEPAGE=	http://www.gnustep.org/experience/Gorm.html
MASTER_SITES=	${MASTER_SITE_GNUSTEP}dev-apps/
REVISION=	2

SHARED_LIBS=	GormCore		0.1 \
		GormPrefs		1.0 \
		Gorm			0.0 \
		GormObjCHeaderParser 	0.0

CATEGORIES=	devel

MODULES=	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}

MAKE_FLAGS+=	libGormObjCHeaderParser_INTERFACE_VERSION=${LIBGormObjCHeaderParser_VERSION}
MAKE_FLAGS+=	GormPrefs_INTERFACE_VERSION=${LIBGormPrefs_VERSION}
MAKE_FLAGS+=	GormCore_INTERFACE_VERSION=${LIBGormCore_VERSION}
MAKE_FLAGS+=	libGorm_INTERFACE_VERSION=${LIBGorm_VERSION}

.include <bsd.port.mk>
