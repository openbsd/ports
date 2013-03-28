# $OpenBSD: Makefile,v 1.9 2013/03/28 21:36:04 jasper Exp $

COMMENT=		Zeitgeist client library

DISTNAME=		libzeitgeist-0.3.18
REVISION=		0
SHARED_LIBS +=	zeitgeist-1.0        0.0      # 2.4

HOMEPAGE=		https://launchpad.net/libzeitgeist

CATEGORIES=		productivity

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2.1/GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES=		https://launchpad.net/libzeitgeist/0.3/0.3.18/+download/

MODULES=		devel/gettext

USE_GMAKE=		Yes
REGRESS_IS_INTERACTIVE=	x11

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += pcre pthread z

LIB_DEPENDS=		devel/glib2

RUN_DEPENDS=		productivity/zeitgeist
TEST_DEPENDS=		productivity/zeitgeist

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
