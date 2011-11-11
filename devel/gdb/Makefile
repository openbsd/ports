# $OpenBSD: Makefile,v 1.17 2011/11/11 23:01:23 jasper Exp $

COMMENT=	GNU debugger
CATEGORIES=	devel

DISTNAME=	gdb-7.2
REVISION=	5

HOMEPAGE=	http://www.gnu.org/software/gdb/

# GPLv2 and GPLv3
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=gdb/} \
		http://distfiles.nl/
DIST_SUBDIR=	gdb

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/gdb

WANTLIB+=	c kvm m ncurses z

#SEPARATE_BUILD = Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--program-transform-name=s,^,e, \
		--disable-nls \
		--enable-target=all \
		--without-expat \
		--without-python

USE_GMAKE=	Yes

.include <bsd.port.mk>
