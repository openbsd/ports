# $OpenBSD: Makefile,v 1.8 2002/07/19 16:29:42 brad Exp $

COMMENT=	"Multiple-image Network Graphics (MNG) reference library"

DISTNAME=	libmng-1.0.4
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libmng/}

HOMEPAGE=	http://www.libmng.com/

LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		lcms::graphics/lcms

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static \
		--with-jpeg="${LOCALBASE}"
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lm"

post-install:
	cd ${WRKSRC}/doc/man && \
		${INSTALL_MAN} libmng.3 ${PREFIX}/man/man3 && \
		${INSTALL_MAN} mng.5 jng.5 ${PREFIX}/man/man5

.include <bsd.port.mk>
