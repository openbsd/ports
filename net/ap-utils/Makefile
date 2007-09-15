# $OpenBSD: Makefile,v 1.7 2007/09/15 22:36:52 merdely Exp $

COMMENT=	wireless access point configuration tools

DISTNAME=	ap-utils-1.3.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://ap-utils.polesye.net/
MAINTAINER=	Chris Kuethe <ckuethe@ualberta.ca>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses menu

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ap-utils/}

MODULES=	devel/gettext converters/libiconv

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+=	--without-included-gettext \
			--with-libiconv-prefix=${LOCALBASE} \
			--with-libintl-prefix=${LOCALBASE}
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/systrace/
	${INSTALL_DATA} files/bin_ap_config ${PREFIX}/share/examples/systrace/

.include <bsd.port.mk>
