# $OpenBSD: Makefile,v 1.30 2013/11/09 23:19:03 naddy Exp $

COMMENT=	word differences between text files

DISTNAME=	wdiff-1.1.2
REVISION=	0
CATEGORIES=	textproc
HOMEPAGE=	https://www.gnu.org/software/wdiff
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
