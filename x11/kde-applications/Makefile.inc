# $OpenBSD: Makefile.inc,v 1.5 2016/12/28 08:21:41 zhuk Exp $

.if !defined(CATEGORIES)
ERRORS +=		"Fatal: missing CATEGORIES"
.endif
CATEGORIES +=		x11/kde-applications

MAINTAINER ?=		KDE porting team <openbsd-kde@googlegroups.com>

# usual KDE rules:
# LGPLv2.1+, GPLv2+
PERMIT_PACKAGE_CDROM ?=	Yes

MASTER_SITES ?=		${MASTER_SITE_KDE:=stable/applications/${VERSION}/src/}

KDE5 ?=			No
.if ${KDE5:L} == "yes"
MODULES :=		devel/kf5 ${MODULES}
VERSION ?=		16.04.0
.else
MODULES :=		x11/kde4 ${MODULES}
VERSION ?=		15.08.3
.endif
