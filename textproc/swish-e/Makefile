# $OpenBSD: Makefile,v 1.1.1.1 2007/09/11 20:52:49 merdely Exp $

COMMENT=		web/text search engine

DISTNAME=		swish-e-2.4.5
SHARED_LIBS=		swish-e	2.0
CATEGORIES=		textproc www

HOMEPAGE=		http://swish-e.org/
MASTER_SITES=		${HOMEPAGE}distribution/

MAINTAINER=		Michael Erdely <merdely@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		converters/libiconv
WANTLIB=		c m z

LIB_DEPENDS=		pcreposix,pcre::devel/pcre \
			xml2::textproc/libxml

RUN_DEPENDS=		::www/p5-URI \
			::www/p5-libwww \
			::www/p5-HTML-Parser \
			:p5-HTML-Tagset->=3:www/p5-HTML-Tagset \
			::mail/p5-MIME-Types \
			::www/p5-HTML-FillInForm \
			::www/p5-HTML-Template

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-pcre

.include <bsd.port.mk>
