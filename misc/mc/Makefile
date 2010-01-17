# $OpenBSD: Makefile,v 1.31 2010/01/17 18:42:08 jasper Exp $

COMMENT=		free Norton Commander clone with many useful features

DISTNAME=		mc-4.7.0
PKGNAME=		${DISTNAME}p0
CATEGORIES=		misc

HOMEPAGE=		http://www.midnight-commander.org/
MASTER_SITES=		${HOMEPAGE}/downloads/
MAINTAINER=		Robert Nagy <robert@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m pcre termcap

USE_GMAKE=		Yes

FLAVORS=		no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=	--without-x
.endif

MODULES=		devel/gettext

LIB_DEPENDS=		glib-2.0.>=0.8,gmodule-2.0.>=0.8::devel/glib2 \
			slang::devel/libslang
RUN_DEPENDS=		:unzip-*:archivers/unzip \
			:zip-*:archivers/zip

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
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mc
	@cp -R ${WRKINST}${SYSCONFDIR}/mc/* ${PREFIX}/share/examples/mc
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/examples/mc
	@find ${PREFIX}/share/examples/mc -type f | \
	    xargs chmod ${SHAREMODE}
	@find ${PREFIX}/share/examples/mc -type d | \
	    xargs chmod ${DIRMODE}
	@rm -r ${WRKINST}${SYSCONFDIR}/mc

.include <bsd.port.mk>
