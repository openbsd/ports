# $OpenBSD: Makefile,v 1.11 2019/07/12 20:50:46 sthen Exp $

COMMENT =		offline browser
DISTNAME =		httrack-3.48.21
REVISION =		2

# "main" application libraries
SHARED_LIBS +=  htsjava                   0.0 # 2.48
SHARED_LIBS +=  httrack                   0.0 # 2.48

# sample libraries, provided in a separate directory
SHARED_LIBS +=  baselinks                 0.0 # 1.0
SHARED_LIBS +=  changecontent             0.0 # 1.0
SHARED_LIBS +=  contentfilter             0.0 # 1.0
SHARED_LIBS +=  displayheader             0.0 # 1.0
SHARED_LIBS +=  filename                  0.0 # 1.0
SHARED_LIBS +=  filename2                 0.0 # 1.0
SHARED_LIBS +=  filenameiisbug            0.0 # 1.0
SHARED_LIBS +=  listlinks                 0.0 # 1.0
SHARED_LIBS +=  log                       0.0 # 1.0
SHARED_LIBS +=  simple                    0.0 # 1.0

CATEGORIES =		www

HOMEPAGE =		https://www.httrack.com/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =  c crypto iconv pthread ssl z

MASTER_SITES =		https://mirror.httrack.com/ \
			https://mirror.httrack.com/historical/

LIB_DEPENDS =		converters/libiconv

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

SEPARATE_BUILD =	No
CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS +=	--enable-online-unit-tests=no \
			ICONV_LIBS="-liconv"

CONFIGURE_ENV =		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

AUTOCONF_VERSION =	2.69

PATCHORIG =		.ports.orig

# The online tests rely on bash features, but we don't want
# interactive tests that much.
BASH_FILES =		${WRKSRC}/tests/*.{sh,test} \
			${WRKSRC}/src/webhttrack

pre-configure:
	perl -pi.bashfix \
		-e 's,\bbash\b,sh,g;' \
		-e 'close ARGV if eof;' \
		${BASH_FILES}

.include <bsd.port.mk>
