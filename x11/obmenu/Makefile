# $OpenBSD: Makefile,v 1.13 2019/07/12 20:51:17 sthen Exp $

COMMENT=	Openbox menu editor

DISTNAME=	obmenu-1.0
REVISION=	6
CATEGORIES=	x11

HOMEPAGE=	http://obmenu.sourceforge.net/

# GPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=obmenu/}

NO_TEST=	Yes

MODULES=	lang/python
RUN_DEPENDS=	x11/py-gtk2 \
		x11/openbox

pre-configure:
	@perl -pi -e 's,!!SYSCONFDIR!!,${SYSCONFDIR},g' \
		${WRKSRC}/obmenu
.for i in pipes/obm-moz pipes/obm-nav pipes/obm-dir
	@perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g' ${WRKSRC}/${i}
.endfor
.for i in pipes/obm-xdg obxml.py obmenu
	@perl -pi -e 's,/usr/bin/python,${MODPY_BIN},g' ${WRKSRC}/${i}
.endfor

.include <bsd.port.mk>
