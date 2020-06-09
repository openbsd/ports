# $OpenBSD: Makefile,v 1.3 2020/06/09 07:14:45 jasper Exp $

COMMENT =	command line XML toolkit

DISTNAME =	xmlstarlet-1.6.1
REVISION =	0

CATEGORIES =	textproc

HOMEPAGE =	http://xmlstar.sourceforge.net/

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c exslt xml2 xslt

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=xmlstar/}

LIB_DEPENDS =		textproc/libxml \
			textproc/libxslt

CONFIGURE_STYLE =	gnu

post-install:
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/xmlstarlet

.include <bsd.port.mk>
