# $OpenBSD: Makefile,v 1.45 2012/09/01 14:36:57 ajacoutot Exp $

COMMENT=		free Norton Commander clone with many useful features

DISTNAME=		mc-4.8.1.1
CATEGORIES=		misc

HOMEPAGE=		http://www.midnight-commander.org/
MASTER_SITES=		${HOMEPAGE}downloads/
MAINTAINER=		Robert Nagy <robert@openbsd.org>
REVISION=	0

EXTRACT_SUFX=		.tar.bz2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m pcre pthread termcap glib-2.0 gmodule-2.0 slang

USE_GMAKE=		Yes
USE_GROFF=		Yes

FLAVORS=		no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=	--without-x
.endif

MODULES=		devel/gettext

LIB_DEPENDS=		devel/glib2 \
			devel/libslang
RUN_DEPENDS=		archivers/unzip \
			archivers/zip

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
