# $OpenBSD: Makefile.inc,v 1.6 2017/06/11 17:47:45 rsadowski Exp $

.if !defined(CATEGORIES)
ERRORS +=		"Fatal: missing CATEGORIES"
.endif
CATEGORIES +=		x11/kde-applications

MAINTAINER ?=		KDE porting team <openbsd-kde@googlegroups.com>

# usual KDE rules:
# LGPLv2.1+, GPLv2+
PERMIT_PACKAGE_CDROM ?=	Yes

KDE5 ?=			No
.if ${KDE5:L} == "yes"
MODULES :=		devel/kf5 ${MODULES}
VERSION ?=		17.04.1
MASTER_SITES ?=		${MASTER_SITE_KDE:=stable/applications/${VERSION}/src/}
.else
MODULES :=		x11/kde4 ${MODULES}
VERSION ?=		15.08.3
MASTER_SITES ?=		${MASTER_SITE_KDE:=Attic/applications/${VERSION}/src/}
.endif
