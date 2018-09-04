# $OpenBSD: Makefile,v 1.3 2018/09/04 12:46:19 espie Exp $

COMMENT =		Tkabber plugins

DISTNAME =		tkabber-plugins-${VERSION}

REVISION =		1

RUN_DEPENDS =		net/tkabber/base

do-configure:
	@perl -pi -e 's,/usr/local,${PREFIX},' ${WRKSRC}/Makefile

.include <bsd.port.mk>
