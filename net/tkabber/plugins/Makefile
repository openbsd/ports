COMMENT =		Tkabber plugins

DISTNAME =		tkabber-plugins-${VERSION}

REVISION =		2

RUN_DEPENDS =		net/tkabber/base

do-configure:
	@perl -pi -e 's,/usr/local,${PREFIX},' ${WRKSRC}/Makefile

.include <bsd.port.mk>
