# $OpenBSD: Makefile,v 1.1.1.1 2005/01/25 03:58:23 mbalmer Exp $

COMMENT=		"mouse and keyboard sharing utility"

DISTNAME=		synergy-1.2.1
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
CONFIGURE_ARGS=		--bindir="/usr/local/bin" \
			--sbindir="/usr/local/sbin" \
			--libexecdir="/usr/local/libexec" \
			--sysconfdir="/etc/" \
			--datadir="/usr/local/share" \
			--localstatedir="/var/run" \
			--libdir="/usr/local/lib" \
			--includedir="/usr/local/include" \
			--mandir="/usr/local/man"

NO_REGRESS=		Yes

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/synergy
	@cd ${WRKDIST}/doc && tar cf - * | tar -C ${PREFIX}/share/doc/synergy \
		-xpf -

.include <bsd.port.mk>
