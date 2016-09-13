# $OpenBSD: Makefile,v 1.13 2016/09/13 18:52:06 naddy Exp $

COMMENT =		web/text search engine

DISTNAME =		swish-e-2.4.7
REVISION =		4
SHARED_LIBS =		swish-e	2.1
CATEGORIES =		textproc www

HOMEPAGE =		http://swish-e.org/
MASTER_SITES =		${HOMEPAGE}distribution/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c iconv lzma m pcre pcreposix pthread xml2 z

LIB_DEPENDS =		converters/libiconv \
			devel/pcre \
			textproc/libxml

RUN_DEPENDS =		www/p5-URI \
			www/p5-libwww \
			www/p5-HTML-Parser \
			www/p5-HTML-Tagset>=3 \
			mail/p5-MIME-Types \
			www/p5-HTML-FillInForm \
			www/p5-HTML-Template

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-pcre

.include <bsd.port.mk>
