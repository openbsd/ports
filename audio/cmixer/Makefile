# $OpenBSD: Makefile,v 1.1.1.1 2009/10/11 14:20:15 landry Exp $

COMMENT =	simple curses mixer

DISTNAME =	cmixer-0.1
CATEGORIES =	audio

MAINTAINER =	Landry Breuil <gaston@gcu.info>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://rhaalovely.net/stuff/

NO_BUILD=	yes
NO_REGRESS=	yes

RUN_DEPENDS=	::devel/p5-Curses-UI

PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/cmixer.pl ${PREFIX}/bin/cmixer

.include <bsd.port.mk>
