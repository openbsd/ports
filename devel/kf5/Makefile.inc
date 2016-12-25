# $OpenBSD: Makefile.inc,v 1.2 2016/12/25 14:54:47 zhuk Exp $

CATEGORIES +=		devel devel/kf5

VERSION ?=		${MODKF5_VERSION}
MAINTAINER ?=		KDE porting team <openbsd-kde@googlegroups.com>
HOMEPAGE ?=		https://projects.kde.org/projects/frameworks/${DISTNAME:C/-[0-9].*//}

# usual KDE rules:
# LGPLv2.1+, GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	cmake
MODULES :=		devel/kf5 ${MODULES}

IS_PORTING_AID ?=	No
.if ${IS_PORTING_AID:L} == "yes"
MASTER_SITES ?=		${MASTER_SITE_KDE:=stable/frameworks/${VERSION:R}/portingAids/}
.else
MASTER_SITES ?=		${MASTER_SITE_KDE:=stable/frameworks/${VERSION:R}/}
.endif

#CONFIGURE_ARGS +=	-DCMAKE_POLICY_DEFAULT_CMP0048=OLD

DIST_SUBDIR =		kde
