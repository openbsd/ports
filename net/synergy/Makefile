# $OpenBSD: Makefile,v 1.2 2006/02/12 16:24:18 aanriot Exp $

COMMENT=		"mouse and keyboard sharing utility"

DISTNAME=		synergy-1.2.1
PKGNAME=		${DISTNAME}p0
CATEGORIES=		net

HOMEPAGE=		http://synergy2.sourceforge.net/

MAINTAINER=		Marc Balmer <mbalmer@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		ICE SM X11 Xext Xinerama Xtst c m pthread stdc++

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=synergy2/}

CONFIGURE_STYLE=        gnu
CONFIGURE_ARGS=		--bindir="${LOCALBASE}/bin" \
			--sbindir="${LOCALBASE}/sbin" \
			--libexecdir="${LOCALBASE}/libexec" \
			--sysconfdir="${SYSCONFDIR}" \
			--datadir="${LOCALBASE}/share" \
			--localstatedir="/var/run" \
			--libdir="${LOCALBASE}/lib" \
			--includedir="${LOCALBASE}/include" \
			--mandir="${LOCALBASE}/man"

USE_X11=		Yes
NO_REGRESS=		Yes

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/synergy
	@cd ${WRKDIST}/doc && tar cf - * | tar -C ${PREFIX}/share/doc/synergy \
		-xpf -

.include <bsd.port.mk>
