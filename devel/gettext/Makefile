# $OpenBSD: Makefile,v 1.16 2000/09/24 01:23:43 brad Exp $
# $FreeBSD: Makefile,v 1.4 1998/11/18 15:09:35 vanilla Exp $

DISTNAME=	gettext-0.10.35
CATEGORIES=	devel
NEED_VERSION=	1.310
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= gettext

HOMEPAGE=	http://www.gnu.org/software/gettext/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-install:
	${INSTALL_DATA_DIR} ${X11BASE}/share/locale
	${INSTALL_DATA} ${WRKSRC}/misc/po-mode.el \
		${PREFIX}/share/gettext/po-mode.el

.include <bsd.port.mk>
