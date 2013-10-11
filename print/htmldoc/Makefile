# $OpenBSD: Makefile,v 1.33 2013/10/11 23:50:39 naddy Exp $

COMMENT=	convert HTML pages to PDF/PS format

V=			1.8.27
DISTNAME=		htmldoc-${V}
CATEGORIES=     	print www

REVISION =		7

HOMEPAGE =		http://www.msweet.org/projects.php?Z1

MAINTAINER=		Benoit Lecocq <benoit@openbsd.org>

# GPLv2 with OpenSSL exception.
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto m ssl z jpeg png

DISTFILES=		${DISTNAME}-source${EXTRACT_SUFX}
MASTER_SITES =		http://www.msweet.org/files/project1/ \
			ftp://ftp.funet.fi/pub/mirrors/ftp.easysw.com/pub/htmldoc/${V}/


LIB_DEPENDS=		graphics/jpeg \
			graphics/png

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=	--without-gui
CONFIGURE_ENV= 		LDFLAGS="-L${LOCALBASE}/lib" \
			CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
			CPPFLAGS="-I${LOCALBASE}/include"
PORTHOME=		${WRKDIR}

post-extract:
	@rm -rf ${WRKSRC}/jpeg ${WRKSRC}/png ${WRKSRC}/zlib

post-configure:
	@perl -pi -e "s,\\$$\\{DESTDIR},," ${WRKSRC}/config.h

NO_TEST=		Yes

.include <bsd.port.mk>
