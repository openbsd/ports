COMMENT =		audio codec for lossless, lossy and hybrid compression

VERSION =		5.4.0
DISTNAME =		wavpack-${VERSION}
CATEGORIES =		audio

HOMEPAGE =		http://www.wavpack.com/

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

SHARED_LIBS +=		wavpack		0.3	# 3.1

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c crypto iconv m

MASTER_SITES =		https://github.com/dbry/wavpack/releases/download/${VERSION}/
EXTRACT_SUFX =		.tar.xz

LIB_DEPENDS =		converters/libiconv

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-legacy \
			--enable-libcrypto \
			--enable-tests
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

DOCDIR =		${PREFIX}/share/doc/wavpack

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/ChangeLog ${WRKSRC}/doc/* ${DOCDIR}
	rm ${PREFIX}/bin/wvtest

do-test:
	${WRKBUILD}/cli/wvtest --default

.include <bsd.port.mk>
