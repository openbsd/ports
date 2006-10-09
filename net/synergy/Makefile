# $OpenBSD: Makefile,v 1.5 2006/10/09 10:41:27 espie Exp $

COMMENT=		"mouse and keyboard sharing utility"

DISTNAME=		synergy-1.3.1
PKGNAME=		${DISTNAME}p0
CATEGORIES=		net

HOMEPAGE=		http://synergy2.sourceforge.net/

MAINTAINER=		Dimitry Andric <dim@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		ICE SM X11 Xext Xinerama Xtst c m pthread stdc++

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=synergy2/}

CONFIGURE_STYLE=        gnu

USE_X11=		Yes
NO_REGRESS=		Yes

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/synergy
	@cd ${WRKDIST}/doc && tar cf - * | tar -C ${PREFIX}/share/doc/synergy \
		-xpf -
	find ${PREFIX}/share/doc/synergy |xargs chown ${SHAREOWN}:${SHAREGRP}

.include <bsd.port.mk>
