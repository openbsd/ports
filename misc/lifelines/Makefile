# $OpenBSD: Makefile,v 1.9 2011/07/07 01:06:59 ajacoutot Exp $

COMMENT=		genealogical database and programming system
DISTNAME=		lifelines-3.0.60
REVISION=		3
CATEGORIES=		misc
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=lifelines/}

HOMEPAGE=		http://lifelines.sourceforge.net/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m ncurses

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		YACC="bison -y" \
			LDFLAGS="-L/usr/local/lib" \
			LIBS="-liconv -lintl"
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
BUILD_DEPENDS=		devel/bison
MODULES=		devel/gettext
USE_GMAKE=		Yes
USE_GROFF =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lifelines
	${INSTALL_DATA} ${FILESDIR}/linesrc ${PREFIX}/share/examples/lifelines

.include <bsd.port.mk>
