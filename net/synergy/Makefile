# $OpenBSD: Makefile,v 1.8 2009/08/10 06:33:43 kili Exp $

COMMENT=		mouse and keyboard sharing utility

DISTNAME=		synergy-1.3.1
PKGNAME=		${DISTNAME}p2
CATEGORIES=		net

HOMEPAGE=		http://synergy2.sourceforge.net/

MAINTAINER=		Dimitry Andric <dim@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		ICE SM X11 Xext Xinerama Xtst c m pthread \
			pthread-stubs stdc++ xcb

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=synergy2/}

CONFIGURE_STYLE=        gnu

USE_X11=		Yes
NO_REGRESS=		Yes

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/synergy
	@cd ${WRKDIST}/doc && tar cf - *.html *.css images | \
		tar -C ${PREFIX}/share/doc/synergy -xpf -
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/synergy
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/synergy
	@${INSTALL_DATA} ${WRKBUILD}/examples/synergy.conf \
		${PREFIX}/share/examples/synergy

.include <bsd.port.mk>
