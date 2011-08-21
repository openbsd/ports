# $OpenBSD: Makefile,v 1.25 2011/08/21 16:41:07 jasper Exp $

COMMENT=	word differences between text files

DISTNAME=	wdiff-0.6.5
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_GNU:=wdiff/}

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c termcap 

MODULES=		devel/gettext
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--prefix="${PREFIX}"
USE_GMAKE=		Yes

.include <bsd.port.mk>
