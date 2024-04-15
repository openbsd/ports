L =	swe
LANG =	Swedish
V =	0.8.2
REVISION =	0

EXTRACT_SUFX =	.tar.bz2

BUILD_DEPENDS +=	textproc/vislcg3

USE_GMAKE =	Yes

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf

post-extract:
	sed -i 's,/bin/bash,${LOCALBASE}/bin/bash,' \
		${WRKSRC}/test-scandivoc

.include <bsd.port.mk>
