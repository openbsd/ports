# $OpenBSD: Makefile,v 1.67 2019/06/25 07:35:59 kirby Exp $

COMMENT=		free Norton Commander clone with many useful features

DISTNAME=		mc-4.8.23
CATEGORIES=		misc

HOMEPAGE=		https://www.midnight-commander.org/
MASTER_SITES=		${HOMEPAGE}downloads/
MAINTAINER=		Robert Nagy <robert@openbsd.org>

EXTRACT_SUFX=		.tar.xz

# GPLv3+
PERMIT_PACKAGE=		Yes

WANTLIB += c curses iconv intl m pcre pthread glib-2.0 gmodule-2.0 slang
WANTLIB += crypto ssl z ssh2 util

SEPARATE_BUILD=		Yes
USE_GMAKE=		Yes

BUILD_DEPENDS=		security/libssh2
LIB_DEPENDS=		devel/glib2 \
			devel/libslang
RUN_DEPENDS=		archivers/unzip \
			archivers/zip \
			security/libssh2 \
			textproc/gdiff

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-subshell \
			--enable-vfs-sftp \
			--enable-vfs-smb \
			--enable-charset \
			--with-slang-includes=${LOCALBASE}/include \
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
