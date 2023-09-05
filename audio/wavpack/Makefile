COMMENT =		audio codec for lossless, lossy and hybrid compression

VERSION =		5.6.0
DISTNAME =		wavpack-${VERSION}
CATEGORIES =		audio
REVISION =		0

HOMEPAGE =		http://www.wavpack.com/

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

SHARED_LIBS +=		wavpack		0.3	# 3.1

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c crypto iconv m

SITES =	https://github.com/dbry/wavpack/releases/download/${VERSION}/
EXTRACT_SUFX =		.tar.xz

BUILD_DEPENDS =		textproc/docbook-xsl
LIB_DEPENDS =		converters/libiconv

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-legacy \
			--enable-libcrypto \
			--enable-tests
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			XSLTPROC=${LOCALBASE}/bin/xsltproc

DOCDIR =		${PREFIX}/share/doc/wavpack

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/ChangeLog ${WRKSRC}/doc/* ${DOCDIR}

.include <bsd.port.mk>
