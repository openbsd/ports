COMMENT=		GNU dbm

DISTNAME=		gdbm-1.24
REVISION=		0

CATEGORIES=		databases

SHARED_LIBS +=  gdbm                 7.0      # 6.0

HOMEPAGE=		https://www.gnu.org/software/gdbm/

SITES=			${SITE_GNU:=gdbm/}

# GPLv3
PERMIT_PACKAGE=	Yes

LIB_DEPENDS=		devel/gettext,-runtime

WANTLIB=		c curses iconv intl pthread readline

CONFIGURE_STYLE=	gnu

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

.include <bsd.port.mk>
