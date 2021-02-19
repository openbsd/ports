# $OpenBSD: Makefile,v 1.7 2021/02/19 20:44:45 edd Exp $

COMMENT =	audacious meta-package

VERSION =	4.1
PKGNAME =	audacious-${VERSION}

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

FLAVORS =	qt5
FLAVOR ?=

.if ${FLAVOR:Mqt5}
RUN_DEPENDS =	audio/audacious/player,qt5>=${VERSION} \
		audio/audacious/plugins,qt5>=${VERSION}
.else
RUN_DEPENDS =	audacious-player->=${VERSION}-!qt5:audio/audacious/player \
		audacious-plugins->=${VERSION}-!qt5:audio/audacious/plugins
.endif

.include <bsd.port.mk>
