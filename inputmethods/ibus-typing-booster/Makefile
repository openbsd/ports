# $OpenBSD: Makefile,v 1.1.1.1 2021/11/06 16:25:15 solene Exp $

COMMENT =		completion input-method to speed up typing
VERSION =		2.14.13

DISTNAME =		ibus-typing-booster-${VERSION}

CATEGORIES =		inputmethods

MAINTAINER =		Solene Rapenne <solene@perso.pw>

HOMEPAGE =		https://mike-fabian.github.io/ibus-typing-booster/

# GPLv3+, APLv2 (fonts)
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://github.com/mike-fabian/ibus-typing-booster/releases/download/${VERSION}/

MODULES =		devel/dconf \
			lang/python

BUILD_DEPENDS =		devel/gettext,-tools \
			inputmethods/ibus

RUN_DEPENDS =		devel/desktop-file-utils \
			inputmethods/ibus \
			misc/m17n/lib \
			x11/gtk+3,-guic

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu

pre-configure:
	sed -i -e "s,^#!/usr/bin/sh,#!/bin/sh," \
		${WRKSRC}/engine/emoji-picker.in \
		${WRKSRC}/engine/ibus-engine-typing-booster.in \
		${WRKSRC}/setup/ibus-setup-typing-booster.in

.include <bsd.port.mk>
