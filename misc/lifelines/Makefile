# $OpenBSD: Makefile,v 1.2 2007/07/16 15:40:02 jasper Exp $

COMMENT=		genealogical database and programming system
DISTNAME=		lifelines-3.0.60
PKGNAME=		${DISTNAME}p0
CATEGORIES=		misc
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=lifelines/}

HOMEPAGE=		http://lifelines.sourceforge.net/

MAINTAINER=		James Prevatt <jprevatt+bsd@paunix.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		YACC="bison -y" \
			LDFLAGS="-L/usr/local/lib" \
			LIBS="-liconv -lintl"
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
BUILD_DEPENDS=		::devel/bison
MODULES=		devel/gettext
WANTLIB=		c m ncurses iconv
USE_GMAKE=		Yes

pre-fake:
	mkdir ${PREFIX}/share/examples/lifelines

post-install:
	${INSTALL_DATA} ${FILESDIR}/linesrc ${PREFIX}/share/examples/lifelines

.include <bsd.port.mk>
