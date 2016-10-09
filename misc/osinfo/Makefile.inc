# $OpenBSD: Makefile.inc,v 1.1 2016/10/09 15:23:18 ajacoutot Exp $

V=			1.0.0

CATEGORIES=		misc devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=		http://libosinfo.org/

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://fedorahosted.org/releases/l/i/libosinfo/

USE_GMAKE ?=		Yes

CONFIGURE_STYLE ?=	gnu
