# $OpenBSD: Makefile.inc,v 1.4 2018/06/04 08:13:43 ajacoutot Exp $

V ?=			1.1.0

CATEGORIES=		misc devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=		http://libosinfo.org/

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://releases.pagure.org/libosinfo/

USE_GMAKE ?=		Yes

CONFIGURE_STYLE ?=	gnu
