# $OpenBSD: Makefile,v 1.55 2015/05/17 14:09:51 robert Exp $

COMMENT=		free Norton Commander clone with many useful features

DISTNAME=		mc-4.8.14
CATEGORIES=		misc

HOMEPAGE=		http://www.midnight-commander.org/
MASTER_SITES=		${HOMEPAGE}downloads/
MAINTAINER=		Robert Nagy <robert@openbsd.org>

EXTRACT_SUFX=		.tar.xz

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m pcre pthread termcap glib-2.0 gmodule-2.0 slang
WANTLIB += crypto ssl z ssh2

USE_GMAKE=		Yes

MODULES=		devel/gettext

BUILD_DEPENDS=		security/libssh2
LIB_DEPENDS=		devel/glib2 \
			devel/libslang
RUN_DEPENDS=		archivers/unzip \
			archivers/zip \
			security/libssh2

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-subshell \
			--enable-vfs-sftp \
			--enable-vfs-smb \
			--enable-charset
CONFIGURE_ENV=		LOCALBASE=${LOCALBASE} \
			LIBS="-lm"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

post-install:
	@mv ${WRKINST}${SYSCONFDIR}/mc ${PREFIX}/share/examples
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/examples/mc
	@find ${PREFIX}/share/examples/mc -type f | \
	    xargs chmod ${SHAREMODE}
	@find ${PREFIX}/share/examples/mc -type d | \
	    xargs chmod ${DIRMODE}

.include <bsd.port.mk>
