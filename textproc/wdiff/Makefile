# $OpenBSD: Makefile,v 1.26 2011/09/17 10:51:22 sthen Exp $

COMMENT=	word differences between text files

DISTNAME=	wdiff-1.0.1
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_GNU:=wdiff/}

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c termcap 

MODULES=		devel/gettext
REGRESS_DEPENDS=	misc/screen \
			textproc/gsed
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--prefix="${PREFIX}"
USE_GMAKE=		Yes

.include <bsd.port.mk>
