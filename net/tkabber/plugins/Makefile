# $OpenBSD: Makefile,v 1.1.1.1 2014/03/26 09:50:34 kirby Exp $

COMMENT =		Tkabber plugins

DISTNAME =		tkabber-plugins-${VERSION}

RUN_DEPENDS =		net/tkabber/base

do-configure:
	@perl -pi -e 's,/usr/local,${PREFIX},' ${WRKSRC}/Makefile

.include <bsd.port.mk>
