COMMENT =	simple curses mixer

DISTNAME =	cmixer-0.3
CATEGORIES =	audio

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

SITES =		http://rhaalovely.net/stuff/

NO_BUILD=	yes
NO_TEST=	yes

RUN_DEPENDS=	devel/p5-Curses-UI

PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/cmixer.pl ${PREFIX}/bin/cmixer

.include <bsd.port.mk>
