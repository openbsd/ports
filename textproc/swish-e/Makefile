# $OpenBSD: Makefile,v 1.4 2010/10/26 12:21:35 merdely Exp $

COMMENT =		web/text search engine

DISTNAME =		swish-e-2.4.7
SHARED_LIBS =		swish-e	2.1
CATEGORIES =		textproc www

HOMEPAGE =		http://swish-e.org/
MASTER_SITES =		${HOMEPAGE}distribution/

MAINTAINER =		Michael Erdely <merdely@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		converters/libiconv
WANTLIB =		c m z pcre pcreposix xml2

LIB_DEPENDS =		::devel/pcre \
			::textproc/libxml

RUN_DEPENDS =		::www/p5-URI \
			::www/p5-libwww \
			::www/p5-HTML-Parser \
			:p5-HTML-Tagset->=3:www/p5-HTML-Tagset \
			::mail/p5-MIME-Types \
			::www/p5-HTML-FillInForm \
			::www/p5-HTML-Template

USE_LIBTOOL =		Yes
USE_GROFF =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-pcre

.include <bsd.port.mk>
