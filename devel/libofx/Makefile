# $OpenBSD: Makefile,v 1.3 2009/11/24 20:32:35 landry Exp $

COMMENT=	opensource implementation of the OFX specification

DISTNAME=	libofx-0.9.1
CATEGORIES=	devel

HOMEPAGE=	http://libofx.sourceforge.net/

MAINTAINER=	Landry Breuil <gaston@gcu.info>

SHARED_LIBS=	ofx 4.0	# .4.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libofx/}

MODULES=	devel/gettext
WANTLIB=	c m pthread stdc++

LIB_DEPENDS=	osp::textproc/opensp

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
