# $OpenBSD: Makefile,v 1.18 2002/04/15 20:16:53 pvalchev Exp $

COMMENT=	"game where you deal drugs on the streets of NY"

DISTNAME=	dopewars-1.5.3
CATEGORIES=	games
NEED_VERSION=	1.500
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= dopewars

HOMEPAGE=	http://dopewars.sourceforge.net/

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES+=	gettext

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-nls \
		 --enable-strict \
		 --datadir="/var/games"
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dopewars
	${INSTALL_DATA} ${WRKSRC}/doc/example-cfg \
		${PREFIX}/share/examples/dopewars/dopewars.cfg.sample

.include <bsd.port.mk>
