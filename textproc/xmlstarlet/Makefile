COMMENT =	command line XML toolkit

DISTNAME =	xmlstarlet-1.6.1
REVISION =	2

CATEGORIES =	textproc

HOMEPAGE =	https://xmlstar.sourceforge.net/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c exslt xml2 xslt

SITES =		${SITE_SOURCEFORGE:=xmlstar/}

LIB_DEPENDS =		textproc/libxml \
			textproc/libxslt

CONFIGURE_STYLE =	gnu

post-install:
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/xmlstarlet

.include <bsd.port.mk>
