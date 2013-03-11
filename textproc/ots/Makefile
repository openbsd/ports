# $OpenBSD: Makefile,v 1.14 2013/03/11 11:42:42 espie Exp $

COMMENT=	open source tool for summarizing texts
DISTNAME=	ots-0.4.2
REVISION=	5
SHARED_LIBS=	ots-1	4.2
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libots/}

HOMEPAGE=	http://libots.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	converters/libiconv \
		devel/gettext

LIB_DEPENDS=	devel/glib2 \
		devel/popt \
		textproc/libxml

WANTLIB=	c m pcre z glib-2.0 popt xml2 pthread

USE_LIBTOOL=Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/ots.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
