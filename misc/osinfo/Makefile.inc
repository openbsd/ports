# $OpenBSD: Makefile.inc,v 1.11 2020/05/31 10:36:21 ajacoutot Exp $

V ?=			1.8.0

CATEGORIES=		misc devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=		http://libosinfo.org/

# GPLv2+ - LGPLv2+
PERMIT_PACKAGE=		Yes

MASTER_SITES=		https://releases.pagure.org/libosinfo/
EXTRACT_SUFX=		.tar.xz

MODULES +=		devel/meson
