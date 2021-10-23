# $OpenBSD: Makefile.inc,v 1.8 2021/09/19 13:36:24 ajacoutot Exp $

CATEGORIES ?=		net multimedia
HOMEPAGE ?=		https://01.org/dleyna/

# use a maintained fork
GH_ACCOUNT ?=		phako
#GH_ACCOUNT ?=		intel
GH_TAGNAME ?=		v0.7.1

MAINTAINER ?=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

MODULES +=		devel/meson
