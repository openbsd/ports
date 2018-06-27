# $OpenBSD: Makefile,v 1.17 2018/06/27 21:03:36 espie Exp $

COMMENT=		frontend to mpd written in Python

DISTNAME=		pympd-0.08.1
CATEGORIES=		audio x11
REVISION=		0

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
