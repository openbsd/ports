# $OpenBSD: Makefile,v 1.4 2009/01/16 08:06:26 ajacoutot Exp $

COMMENT=	Openbox menu editor

DISTNAME=	obmenu-1.0
PKGNAME=	${DISTNAME}p2
CATEGORIES=	x11

HOMEPAGE=	http://obmenu.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=obmenu/}

NO_REGRESS=	Yes
PKG_ARCH=	*

MODULES=	lang/python
RUN_DEPENDS=	::x11/py-gtk2 \
		::x11/openbox

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
