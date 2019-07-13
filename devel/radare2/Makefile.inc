# $OpenBSD: Makefile.inc,v 1.8 2019/07/13 10:59:26 sthen Exp $

# Arches suggested by upstream, unsure which work on OpenBSD for sure.
ONLY_FOR_ARCHS ?=	amd64 i386
# We need to figure out which of the following arches work and fix ones
# that don't. We know powerpc is busted.
#ONLY_FOR_ARCHS ?=	arm mips64 mips64el powerpc sparc64

CATEGORIES ?=		devel
HOMEPAGE ?=		http://www.radare.org/r/
MAINTAINER ?=		Edd Barrett <edd@openbsd.org>

# LGPLv3
PERMIT_PACKAGE ?=	Yes

GH_ACCOUNT =		radare

USE_GMAKE ?=		Yes
CONFIGURE_STYLE ?=	simple

NO_TEST ?=		Yes
