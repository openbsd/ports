COMMENT =	mikmod sound library

DISTNAME =	libmikmod-3.3.12
SHARED_LIBS +=	mikmod               4.0      # 6.0
CATEGORIES =	audio devel

HOMEPAGE =	https://mikmod.sourceforge.net/

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB +=	pthread sndio

SITES =		${SITE_SOURCEFORGE:=mikmod/}

SEPARATE_BUILD = Yes
CONFIGURE_STYLE = gnu

CONFIGURE_ARGS+= --disable-dl \
		 --disable-oss \
		 --disable-esd

.include <bsd.port.mk>
