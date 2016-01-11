# $OpenBSD: Makefile,v 1.2 2016/01/11 11:04:21 czarkoff Exp $

COMMENT =		Tkabber plugins

DISTNAME =		tkabber-plugins-${VERSION}

REVISION =		0

RUN_DEPENDS =		net/tkabber/base

do-configure:
	@perl -pi -e 's,/usr/local,${PREFIX},' ${WRKSRC}/Makefile

.include <bsd.port.mk>
