# $OpenBSD: Makefile,v 1.22 2012/08/25 19:15:44 pascal Exp $

COMMENT=	GNU debugger
CATEGORIES=	devel

DISTNAME=	gdb-7.5

HOMEPAGE=	http://www.gnu.org/software/gdb/

MAINTAINER=	Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2 and GPLv3
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=gdb/}
DIST_SUBDIR=	gdb

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/gdb

WANTLIB = c expat kvm m ncurses pthread ${MODPY_WANTLIB} util z

#SEPARATE_BUILD = Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--program-transform-name=s,^,e, \
		--disable-nls \
	 	--enable-target=all \
		--with-python=${MODPY_BIN}

USE_GMAKE=	Yes

USE_LIBTOOL =	Yes
MODULES +=	lang/python
LIB_DEPENDS += 	${MODPY_LIB_DEPENDS}
MODPY_BUILDDEP = No

.include <bsd.port.mk>
