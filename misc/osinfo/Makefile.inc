# $OpenBSD: Makefile.inc,v 1.12 2020/06/24 17:30:00 cwen Exp $

V ?=			1.8.0

CATEGORIES=		misc devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=		https://libosinfo.org/

# GPLv2+ - LGPLv2+
PERMIT_PACKAGE=		Yes

MASTER_SITES=		https://releases.pagure.org/libosinfo/
EXTRACT_SUFX=		.tar.xz

MODULES +=		devel/meson
