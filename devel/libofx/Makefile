# $OpenBSD: Makefile,v 1.15 2017/04/10 11:45:26 sthen Exp $

COMMENT=	opensource implementation of the OFX specification

DISTNAME=	libofx-0.9.11
CATEGORIES=	devel

HOMEPAGE=	http://libofx.sourceforge.net/

MAINTAINER=	Landry Breuil <landry@openbsd.org>

SHARED_LIBS=	ofx 7.0	# .6.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libofx/}

MODULES=	devel/gettext
WANTLIB=	c m pthread ${LIBCXX} osp

LIB_DEPENDS=	textproc/opensp
BUILD_DEPENDS =	devel/help2man


CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -lm" \
		CPPFLAGS="-I${LOCALBASE}/include"

CONFIGURE_ARGS=	--without-libcurl \
		--disable-doxygen \
		--disable-dot \
		--disable-gengetopt

post-install:
	@chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/doc/libofx/html

.include <bsd.port.mk>
