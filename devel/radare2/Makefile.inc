# $OpenBSD: Makefile.inc,v 1.11 2020/06/04 08:00:34 jasper Exp $

# Arches suggested by upstream, unsure which work on OpenBSD for sure.
ONLY_FOR_ARCHS ?=	amd64 i386
# We need to figure out which of the following arches work and fix ones
# that don't. We know powerpc is busted.
#ONLY_FOR_ARCHS ?=	arm mips64 mips64el powerpc sparc64

CATEGORIES ?=		devel
HOMEPAGE ?=		https://www.radare.org/r/
MAINTAINER ?=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv3
PERMIT_PACKAGE ?=	Yes

GH_ACCOUNT =		radare

USE_GMAKE ?=		Yes
CONFIGURE_STYLE ?=	simple
