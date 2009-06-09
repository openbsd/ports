# $OpenBSD: Makefile,v 1.2 2009/06/09 02:58:39 kevlo Exp $

COMMENT=	secure concurrent multi-server terminal control

DISTNAME=	clusterssh-3.26

CATEGORIES=	security

HOMEPAGE=	http://clusterssh.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=clusterssh/}

RUN_DEPENDS=	::x11/p5-Tk \
		::x11/p5-X11-Protocol
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=gnu

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/src/cssh ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/src/cssh.1 ${PREFIX}/man/man1
	ln -s cssh ${PREFIX}/bin/crsh
	ln -s cssh ${PREFIX}/bin/ctel

.include <bsd.port.mk>
