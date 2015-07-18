# $OpenBSD: Makefile,v 1.16 2015/07/18 14:33:50 jasper Exp $

COMMENT=		frontend to mpd written in Python

DISTNAME=		pympd-0.08.1
CATEGORIES=		audio x11

HOMEPAGE=		http://pympd.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pympd/}

MODULES=		lang/python

BUILD_DEPENDS=		x11/py-gtk2

RUN_DEPENDS=		x11/py-gtk2 \
			devel/desktop-file-utils

PKG_ARCH=		*
NO_TEST=		Yes

do-configure:
	@sed -i 's,/usr/bin/python,${MODPY_BIN},g; \
		s,PREFIX,${PREFIX},g;' ${WRKSRC}/pympd

.include <bsd.port.mk>
