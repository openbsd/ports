# $OpenBSD: Makefile.inc,v 1.9 2019/06/15 09:26:38 ajacoutot Exp $

V ?=			1.5.0

CATEGORIES=		misc devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=		http://libosinfo.org/

# LGPLv2+
PERMIT_PACKAGE=		Yes

MASTER_SITES=		https://releases.pagure.org/libosinfo/

USE_GMAKE ?=		Yes

CONFIGURE_STYLE ?=	gnu
