# $OpenBSD: Makefile,v 1.28 2013/02/05 21:16:19 jasper Exp $

COMMENT=	word differences between text files

DISTNAME=	wdiff-1.1.2
CATEGORIES=	textproc
HOMEPAGE=	http://www.gnu.org/software/wdiff
MASTER_SITES=	${MASTER_SITE_GNU:=wdiff/}

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c termcap

MODULES=		devel/gettext
REGRESS_DEPENDS=	misc/screen
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--prefix="${PREFIX}"
USE_GMAKE=		Yes

.include <bsd.port.mk>
