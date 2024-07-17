COMMENT =		sensible unix password cracker

V =			2.10.0
DISTNAME =		cracklib-${V}
SHARED_LIBS =		crack	0.5	# 11.0
CATEGORIES =		security

HOMEPAGE =		https://sourceforge.net/projects/cracklib/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB =  c iconv intl z

SITES =		https://github.com/cracklib/cracklib/releases/download/v${V}/

BUILD_DEPENDS =		devel/gettext,-tools
LIB_DEPENDS =		devel/gettext,-runtime

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-default-dict=${PREFIX}/share/cracklib/cracklib-small \
			--without-python
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST =		Yes

post-install:
	/bin/sh ${WRKSRC}/util/cracklib-format ${WRKSRC}/dicts/cracklib-small | \
		${WRKSRC}/util/cracklib-packer ${WRKSRC}/dicts/cracklib-small
	${INSTALL_DATA} ${WRKSRC}/dicts/cracklib-small.* ${PREFIX}/share/cracklib
	
.include <bsd.port.mk>
