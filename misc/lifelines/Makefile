# $OpenBSD: Makefile,v 1.8 2010/11/19 07:23:11 espie Exp $

COMMENT=		genealogical database and programming system
DISTNAME=		lifelines-3.0.60
REVISION=		2
CATEGORIES=		misc
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=lifelines/}

HOMEPAGE=		http://lifelines.sourceforge.net/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m ncurses iconv

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
