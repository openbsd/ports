# $OpenBSD: Makefile,v 1.9 2011/09/22 16:40:54 landry Exp $

COMMENT=	GNU debugger
CATEGORIES=	devel

DISTNAME=	gdb-7.2
REVISION=	1

MASTER_SITES=	${MASTER_SITE_GNU:=gdb/}

HOMEPAGE=	http://www.gnu.org/software/gdb/

# GPLv2 and GPLv3
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/gdb

WANTLIB+=	c kvm m ncurses z

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--program-transform-name=s,^,e, \
		--disable-nls \
		--enable-target=all \
		--without-expat \
		--without-python

USE_GMAKE=	Yes

.include <bsd.port.mk>
