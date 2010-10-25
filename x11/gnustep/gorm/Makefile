# $OpenBSD: Makefile,v 1.2 2010/10/25 12:37:37 sebastia Exp $

COMMENT=	GNUstep graphical object relationship modeller

DISTNAME=	gorm-1.2.12
REVISION=	0
HOMEPAGE=	http://www.gnustep.org/experience/Gorm.html
MASTER_SITES=	${MASTER_SITE_GNUSTEP}dev-apps/

SHARED_LIBS=	GormCore		0.0 \
		GormPrefs		0.0 \
		Gorm			0.0 \
		GormObjCHeaderParser 	0.0

CATEGORIES=	devel

MODULES=	x11/gnustep
WANTLIB+=	c m objc pthread gnustep-base gnustep-gui
LIB_DEPENDS+=	::x11/gnustep/gui
RUN_DEPENDS+=	:gnustep-back-*:x11/gnustep/back

CONFIGURE_STYLE=none
MAKE_FLAGS+=	libGormObjCHeaderParser_INTERFACE_VERSION=${LIBGormObjCHeaderParser_VERSION}
MAKE_FLAGS+=	GormPrefs_INTERFACE_VERSION=${LIBGormPrefs_VERSION}
MAKE_FLAGS+=	GormCore_INTERFACE_VERSION=${LIBGormCore_VERSION}
MAKE_FLAGS+=	libGorm_INTERFACE_VERSION=${LIBGorm_VERSION}

.include <bsd.port.mk>
