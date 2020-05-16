# $OpenBSD: Makefile,v 1.20 2020/05/16 14:03:39 ajacoutot Exp $

COMMENT =		sensible unix password cracker

V =			2.9.7
DISTNAME =		cracklib-${V}
SHARED_LIBS =		crack	0.4	# 11.0
CATEGORIES =		security

HOMEPAGE =		http://sourceforge.net/projects/cracklib/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB =  c iconv intl z

MASTER_SITES =		https://github.com/cracklib/cracklib/releases/download/v${V}/

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
