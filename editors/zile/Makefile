# $OpenBSD: Makefile,v 1.34 2011/03/26 18:42:12 naddy Exp $

COMMENT=		lightweight Emacs clone
DISTNAME=		zile-2.3.23
CATEGORIES=		editors
HOMEPAGE=		http://www.gnu.org/software/zile/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNU:=zile/}

WANTLIB=		c ncursesw

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-silent-rules

.include <bsd.port.mk>
