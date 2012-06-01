# $OpenBSD: Makefile,v 1.27 2012/06/01 09:10:20 pascal Exp $

COMMENT=	word differences between text files

DISTNAME=	wdiff-1.1.1
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
