# $OpenBSD: Makefile,v 1.1.1.1 2009/11/24 20:20:31 landry Exp $

COMMENT=	object-oriented SGML parser

DISTNAME=	OpenSP-1.5.2
PKGNAME=	${DISTNAME:L}
CATEGORIES=	textproc

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=openjade/}

SHARED_LIBS=	osp 0.0 # .4.0

HOMEPAGE=	http://openjade.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext textproc/intltool
WANTLIB=	c m pthread stdc++
USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-libiconv-prefix=${LOCALBASE} \
		--with-libintl-prefix=${LOCALBASE}

BUILD_DEPENDS+=	::textproc/xmlto

post-install:
	mv ${PREFIX}/share/doc/{OpenSP,opensp}

.include <bsd.port.mk>
