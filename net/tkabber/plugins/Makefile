COMMENT =		Tkabber plugins

REVISION =		3

DISTNAME =		tkabber-plugins-${VERSION}

RUN_DEPENDS =		net/tkabber/base

do-configure:
	@perl -pi -e 's,/usr/local,${PREFIX},' ${WRKSRC}/Makefile

.include <bsd.port.mk>
