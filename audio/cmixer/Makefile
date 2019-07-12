# $OpenBSD: Makefile,v 1.5 2019/07/12 20:43:32 sthen Exp $

COMMENT =	simple curses mixer

DISTNAME =	cmixer-0.2
CATEGORIES =	audio

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =	http://rhaalovely.net/stuff/

NO_BUILD=	yes
NO_TEST=	yes

RUN_DEPENDS=	devel/p5-Curses-UI \
		audio/aucatctl

PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/cmixer.pl ${PREFIX}/bin/cmixer

.include <bsd.port.mk>
