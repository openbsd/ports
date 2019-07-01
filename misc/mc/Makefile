# $OpenBSD: Makefile,v 1.68 2019/07/01 06:52:16 kirby Exp $

COMMENT=		free Norton Commander clone with many useful features

DISTNAME=		mc-4.8.23
CATEGORIES=		misc
REVISION=		0

HOMEPAGE=		https://www.midnight-commander.org/
MASTER_SITES=		${HOMEPAGE}downloads/
MAINTAINER=		Robert Nagy <robert@openbsd.org>

EXTRACT_SUFX=		.tar.xz

# GPLv3+
PERMIT_PACKAGE=		Yes

WANTLIB += c curses iconv intl m pthread glib-2.0 gmodule-2.0 slang
WANTLIB += crypto ssl z ssh2 util

SEPARATE_BUILD=		Yes
USE_GMAKE=		Yes

LIB_DEPENDS=		devel/glib2 \
			devel/libslang \
			security/libssh2
RUN_DEPENDS=		archivers/unzip \
			archivers/zip \
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
