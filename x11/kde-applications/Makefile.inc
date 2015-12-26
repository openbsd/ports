# $OpenBSD: Makefile.inc,v 1.2 2015/12/26 22:39:20 zhuk Exp $

.if !defined(CATEGORIES)
ERRORS +=		"Fatal: missing CATEGORIES"
.endif
CATEGORIES +=		x11/kde-applications

VERSION ?=		15.08.3
MAINTAINER ?=		KDE porting team <openbsd-kde@googlegroups.com>

# usual KDE rules:
# LGPLv2.1+, GPLv2+
PERMIT_PACKAGE_CDROM ?=	Yes

MASTER_SITES ?=		${MASTER_SITE_KDE:=stable/applications/${VERSION}/src/}

MODULES +=		x11/kde4
