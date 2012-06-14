# $OpenBSD: Makefile,v 1.3 2012/06/14 09:22:27 landry Exp $

COMMENT =	simple curses mixer

DISTNAME =	cmixer-0.2
CATEGORIES =	audio

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://rhaalovely.net/stuff/

NO_BUILD=	yes
NO_REGRESS=	yes

RUN_DEPENDS=	devel/p5-Curses-UI \
		audio/aucatctl

PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/cmixer.pl ${PREFIX}/bin/cmixer

.include <bsd.port.mk>
