# $OpenBSD: Makefile,v 1.4 2005/03/12 21:23:24 espie Exp $

COMMENT=		"zile is lossy emacs"

DISTNAME=		zile-1.6.2
PKGNAME=		${DISTNAME}p0
CATEGORIES=		editors

HOMEPAGE=		http://zile.sourceforge.net/


# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ncurses

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=zile/}
CONFIGURE_STYLE=	simple

CONFIGURE_ARGS=		${CONFIGURE_SHARED} --enable-xterm-support

# Force regen from patched version
post-patch:
	cd ${WRKDIST}/doc && makeinfo zile.texi

.include <bsd.port.mk>
