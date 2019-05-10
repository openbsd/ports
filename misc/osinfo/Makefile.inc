# $OpenBSD: Makefile.inc,v 1.8 2019/05/10 13:04:56 ajacoutot Exp $

V ?=			1.5.0

CATEGORIES=		misc devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=		http://libosinfo.org/

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://releases.pagure.org/libosinfo/

USE_GMAKE ?=		Yes

CONFIGURE_STYLE ?=	gnu
