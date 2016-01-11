# $OpenBSD: Makefile,v 1.8 2016/01/11 21:32:37 espie Exp $

COMMENT =		utility library for parser building

NETSURF_PROJECT =	libparserutils
NETSURF_VERSION =	0.2.1
REVISION =		0

CATEGORIES =		devel
SHARED_LIBS =		parserutils 2.0 #0.2.1

MODULES =		converters/libiconv

MAKE_FLAGS +=		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib -liconv"

pre-build:
	echo "CFLAGS += -I${LOCALBASE}/include" \
		> ${WRKSRC}/Makefile.config.override

.include <bsd.port.mk>
