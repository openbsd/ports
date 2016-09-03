# $OpenBSD: Makefile,v 1.43 2016/09/03 13:48:39 jca Exp $

COMMENT=	GNU debugger
CATEGORIES=	devel

DISTNAME=	gdb-7.11.1
REVISION=	0

HOMEPAGE=	https://www.gnu.org/software/gdb/

MAINTAINER=	Pascal Stumpf <pascal@stumpf.co>

# GPLv2 and GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=gdb/}
DIST_SUBDIR=	gdb
EXTRACT_SUFX=	.tar.xz

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/gdb

WANTLIB = c expat kvm m ncurses pthread ${MODPY_WANTLIB} util

#SEPARATE_BUILD = Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--program-prefix=e \
		--disable-nls \
		--without-lzma \
	 	--enable-target=all \
		--with-python=${MODPY_BIN}

USE_GMAKE=	Yes

MODULES +=	lang/python
LIB_DEPENDS += 	${MODPY_LIB_DEPENDS}
MODPY_BUILDDEP = No

.include <bsd.port.mk>
