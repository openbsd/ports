# $OpenBSD: Makefile,v 1.33 2019/05/17 16:19:41 sthen Exp $

COMMENT=	word differences between text files

DISTNAME=	wdiff-1.2.2
CATEGORIES=	textproc
HOMEPAGE=	https://www.gnu.org/software/wdiff
MASTER_SITES=	${MASTER_SITE_GNU:=wdiff/}
REVISION=	1

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c curses iconv intl

LIB_DEPENDS=		devel/gettext
TEST_DEPENDS=	misc/screen
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--prefix="${PREFIX}"
USE_GMAKE=		Yes

.include <bsd.port.mk>
