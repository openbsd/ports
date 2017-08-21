# $OpenBSD: Makefile,v 1.26 2017/08/21 20:17:59 fcambus Exp $

COMMENT=	view and edit files in hexadecimal or ASCII

GH_ACCOUNT=	pixel
GH_PROJECT=	hexedit
GH_TAGNAME=	1.3

CATEGORIES=	editors

HOMEPAGE=	http://rigaux.org/hexedit.html

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c ncurses

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69

NO_TEST=	Yes

post-build:
	m4 -DVERSION=${GH_TAGNAME} ${WRKSRC}/hexedit.1.in > ${WRKSRC}/hexedit.1

.include <bsd.port.mk>
