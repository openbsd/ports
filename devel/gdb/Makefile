# $OpenBSD: Makefile,v 1.18 2011/11/13 14:56:57 espie Exp $

COMMENT=	GNU debugger
CATEGORIES=	devel

DISTNAME=	gdb-7.2
REVISION=	6

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

WANTLIB +=	c kvm m ncurses z


#SEPARATE_BUILD = Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--program-transform-name=s,^,e, \
		--disable-nls \
	 	--enable-target=all \
		--with-python=${MODPY_BIN}

USE_GMAKE=	Yes

MODULES +=	lang/python
WANTLIB +=	expat ${MODPY_WANTLIB} pthread util
LIB_DEPENDS += 	${MODPY_LIB_DEPENDS}
MODPY_BUILDDEP = No

.include <bsd.port.mk>
