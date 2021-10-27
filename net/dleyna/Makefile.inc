# $OpenBSD: Makefile.inc,v 1.9 2021/10/27 06:43:58 ajacoutot Exp $

CATEGORIES ?=		net multimedia
HOMEPAGE ?=		https://01.org/dleyna/

# use a maintained fork
GH_ACCOUNT ?=		phako
#GH_ACCOUNT ?=		intel
GH_TAGNAME ?=		v0.7.2

MAINTAINER ?=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

MODULES +=		devel/meson
