# $OpenBSD: Makefile,v 1.8 2010/10/19 07:54:22 espie Exp $

COMMENT=	open source tool for summarizing texts
DISTNAME=	ots-0.4.2
PKGNAME=	${DISTNAME}p1
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

LIB_DEPENDS=	glib-2.0.>=400.8::devel/glib2 \
		popt.>=0.3::devel/popt \
		xml2.>=9.0::textproc/libxml

WANTLIB=	c m pcre z

USE_LIBTOOL=Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/ots.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
