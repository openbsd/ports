# $OpenBSD: Makefile,v 1.8 2013/03/21 08:48:55 ajacoutot Exp $

COMMENT =		web/text search engine

DISTNAME =		swish-e-2.4.7
REVISION=	0
SHARED_LIBS =		swish-e	2.1
CATEGORIES =		textproc www

HOMEPAGE =		http://swish-e.org/
MASTER_SITES =		${HOMEPAGE}distribution/

MAINTAINER =		Michael Erdely <merdely@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		converters/libiconv
WANTLIB =		c m z pcre pcreposix xml2

LIB_DEPENDS =		devel/pcre \
			textproc/libxml

RUN_DEPENDS =		www/p5-URI \
			www/p5-libwww \
			www/p5-HTML-Parser \
			www/p5-HTML-Tagset>=3 \
			mail/p5-MIME-Types \
			www/p5-HTML-FillInForm \
			www/p5-HTML-Template

USE_GROFF =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-pcre

.include <bsd.port.mk>
