# $OpenBSD: Makefile,v 1.11 2021/02/28 08:24:21 ajacoutot Exp $

COMMENT =		library for manipulating IPTC metadata

DISTNAME =		libiptcdata-1.0.4
REVISION =		2

SHARED_LIBS +=  iptcdata             0.0      # 3.3

CATEGORIES =		graphics

HOMEPAGE =		http://libiptcdata.sourceforge.net/

# LGPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c iconv intl

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libiptcdata/}

LIB_DEPENDS =		devel/gettext,-runtime

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
