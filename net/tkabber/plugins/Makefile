# $OpenBSD: Makefile,v 1.4 2019/04/24 16:26:57 sthen Exp $

COMMENT =		Tkabber plugins

DISTNAME =		tkabber-plugins-${VERSION}

REVISION =		2

RUN_DEPENDS =		net/tkabber/base

do-configure:
	@perl -pi -e 's,/usr/local,${PREFIX},' ${WRKSRC}/Makefile

.include <bsd.port.mk>
