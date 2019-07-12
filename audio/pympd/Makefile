# $OpenBSD: Makefile,v 1.19 2019/07/12 20:43:40 sthen Exp $

COMMENT=		frontend to mpd written in Python

DISTNAME=		pympd-0.08.1
CATEGORIES=		audio x11
REVISION=		0

HOMEPAGE=		http://pympd.sourceforge.net/

# GPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pympd/}

MODULES=		lang/python

BUILD_DEPENDS=		x11/py-gtk2

RUN_DEPENDS=		x11/py-gtk2 \
			devel/desktop-file-utils

NO_TEST=		Yes

do-configure:
	@sed -i 's,/usr/bin/python,${MODPY_BIN},g; \
		s,PREFIX,${PREFIX},g;' ${WRKSRC}/pympd

.include <bsd.port.mk>
