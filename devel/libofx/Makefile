# $OpenBSD: Makefile,v 1.1.1.1 2007/03/19 10:50:16 ajacoutot Exp $

COMMENT=	"opensource implementation of the OFX specification"

DISTNAME=	libofx-0.8.3
CATEGORIES=	devel

HOMEPAGE=	http://libofx.sourceforge.net/

MAINTAINER=	Landry Breuil <gaston@gcu.info>

SHARED_LIBS=	ofx 3.1	# .3.1

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libofx/}

WANTLIB=	c m stdc++

LIB_DEPENDS=	::textproc/sp

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -lm"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-opensp-libs=${LOCALBASE}/lib \
		--with-opensp-includes=${LOCALBASE}/include/sp \
		--without-libcurl \
		--disable-doxygen \
		--disable-dot \
		--disable-gengetopt

post-install:
	@chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/doc/libofx/html

.include <bsd.port.mk>
