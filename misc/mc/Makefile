# $OpenBSD: Makefile,v 1.50 2014/09/11 09:58:34 robert Exp $

COMMENT=		free Norton Commander clone with many useful features

DISTNAME=		mc-4.8.12
CATEGORIES=		misc

REVISION=		0

HOMEPAGE=		http://www.midnight-commander.org/
MASTER_SITES=		${HOMEPAGE}downloads/
MAINTAINER=		Robert Nagy <robert@openbsd.org>

EXTRACT_SUFX=		.tar.xz

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m pcre pthread termcap glib-2.0 gmodule-2.0 slang
WANTLIB += crypto ssl z ssh2

USE_GMAKE=		Yes
USE_GROFF=		Yes

MODULES=		devel/gettext

BUILD_DEPENDS=		security/libssh2
LIB_DEPENDS=		devel/glib2 \
			devel/libslang
RUN_DEPENDS=		archivers/unzip \
			archivers/zip \
			security/libssh2

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-confdir=${SYSCONFDIR}/mc \
			--with-screeen=slang \
			--with-subshell \
			--with-vfs \
			--with-samba \
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
