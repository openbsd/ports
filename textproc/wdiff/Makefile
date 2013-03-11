# $OpenBSD: Makefile,v 1.29 2013/03/11 11:42:47 espie Exp $

COMMENT=	word differences between text files

DISTNAME=	wdiff-1.1.2
CATEGORIES=	textproc
HOMEPAGE=	http://www.gnu.org/software/wdiff
MASTER_SITES=	${MASTER_SITE_GNU:=wdiff/}

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c termcap

MODULES=		devel/gettext
TEST_DEPENDS=	misc/screen
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--prefix="${PREFIX}"
USE_GMAKE=		Yes

.include <bsd.port.mk>
