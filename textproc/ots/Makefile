# $OpenBSD: Makefile,v 1.9 2010/11/10 22:56:05 jasper Exp $

COMMENT=	open source tool for summarizing texts
DISTNAME=	ots-0.4.2
REVISION=	2
SHARED_LIBS=	ots-1	4.2
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libots/}

HOMEPAGE=	http://libots.sourceforge.net/

# GPLv2+
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	converters/libiconv \
		devel/gettext

LIB_DEPENDS=	::devel/glib2 \
		::devel/popt \
		::textproc/libxml

WANTLIB=	c m pcre z glib-2.0 popt xml2

USE_LIBTOOL=Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/ots.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
