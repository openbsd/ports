# $OpenBSD: Makefile,v 1.6 2011/04/13 06:22:29 landry Exp $

COMMENT=	opensource implementation of the OFX specification

DISTNAME=	libofx-0.9.2
CATEGORIES=	devel

HOMEPAGE=	http://libofx.sourceforge.net/

MAINTAINER=	Landry Breuil <landry@openbsd.org>

SHARED_LIBS=	ofx 5.0	# .4.2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libofx/}

MODULES=	devel/gettext
WANTLIB=	c m pthread stdc++ osp

LIB_DEPENDS=	textproc/opensp

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -lm -pthread" \
		CPPFLAGS="-I${LOCALBASE}/include"

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--without-libcurl \
		--disable-doxygen \
		--disable-dot \
		--disable-gengetopt

post-install:
	@chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/doc/libofx/html

.include <bsd.port.mk>
