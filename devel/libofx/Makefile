# $OpenBSD: Makefile,v 1.8 2013/03/11 10:50:10 espie Exp $

COMMENT=	opensource implementation of the OFX specification

DISTNAME=	libofx-0.9.5
CATEGORIES=	devel

HOMEPAGE=	http://libofx.sourceforge.net/

MAINTAINER=	Landry Breuil <landry@openbsd.org>

SHARED_LIBS=	ofx 6.0	# .5.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libofx/}

MODULES=	devel/gettext
WANTLIB=	c m pthread stdc++ osp

LIB_DEPENDS=	textproc/opensp
BUILD_DEPENDS =	devel/help2man

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -lm" \
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
