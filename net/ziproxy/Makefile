# $OpenBSD: Makefile,v 1.15 2019/07/12 20:48:53 sthen Exp $

COMMENT =		compressing non-caching HTTP proxy

DISTNAME =		ziproxy-3.3.1
EXTRACT_SUFX =		.tar.bz2
REVISION =		0

CATEGORIES =		net www

HOMEPAGE =		http://ziproxy.sourceforge.net/

MAINTAINER =		Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=		c m pthread z gif>=6 png>=8 jpeg>=62 jasper>=2
WANTLIB +=		sasl2

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ziproxy/}

LIB_DEPENDS =		graphics/giflib \
			graphics/png \
			graphics/jpeg \
			graphics/jasper \
			security/cyrus-sasl2

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	gnu

CPPFLAGS =		-I${LOCALBASE}/include

CONFIGURE_ARGS =	--with-jasper=${LOCALBASE}

CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="${CPPFLAGS}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ziproxy
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ziproxy/sasl
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ziproxy
	${INSTALL_DATA} ${WRKSRC}/src/tools/ziproxy_genhtml_stats.sh \
		${WRKSRC}/etc/ziproxy/*.list \
		${WRKSRC}/etc/ziproxy/http.passwd \
		${WRKSRC}/etc/ziproxy/ziproxy.conf \
		${PREFIX}/share/examples/ziproxy
	${INSTALL_DATA} ${WRKSRC}/etc/ziproxy/sasl/ziproxy.conf \
		${PREFIX}/share/examples/ziproxy/sasl
.for i in COPYING CREDITS JPEG2000* README*
	${INSTALL_DATA} ${WRKSRC}/$i ${PREFIX}/share/doc/ziproxy
.endfor

.include <bsd.port.mk>
