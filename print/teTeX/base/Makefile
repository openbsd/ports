# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.8 2000/09/13 14:22:08 avsm Exp $

PKGNAME=	teTeX_base-1.0.7
CATEGORIES=	print/teTeX
NEED_VERSION= 	1.330
DIST_SUBDIR=	teTeX
MASTER_SITES=	${MASTER_SITE_TEX_CTAN}
MASTER_SITE_SUBDIR=	systems/unix/teTeX/1.0/distrib/sources
DISTFILES=	${TETEX_SRC} 
WRKDIST=	${WRKDIR}/teTeX-1.0

HOMEPAGE=	http://tug.cs.umb.edu/tetex/
MAINTAINER=	espie@openbsd.org avsm@openbsd.org

PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_FTP=	Yes

FLAVORS= no_x11
FLAVOR?= 

TETEX_SRC=teTeX-src-1.0.7.tar.gz

RUN_DEPENDS=${PREFIX}/share/texmf/ls-R::print/teTeX/texmf
BUILD_DEPENDS=${PREFIX}/share/texmf/ls-R::print/teTeX/texmf
LIB_DEPENDS= png.1::graphics/png 

PNGDIR=${PREFIX}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS= --disable-multiplatform --without-texinfo \
	--with-system-ncurses --with-system-zlib --with-system-pnglib \
	--with-pnglib-libdir=${PNGDIR}/lib --with-pnglib-include=${PNGDIR}/include
CONFIGURE_ENV=YACC=yacc

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+= --without-x11
.else
LIB_DEPENDS+= Xaw3d.6.1::x11/Xaw3d
USE_X11= Yes
.endif

# TeTeX configure resists having --prefix=${DESTDIR}/usr/local, so do the
# change after the fact.
post-configure:
	cd ${WRKBUILD} && find . -name Makefile -print | PREFIX=${PREFIX} \
		xargs perl -pi.bak ${FILESDIR}/fix-Makefiles
	cd ${WRKBUILD} && find . -name Makefile -print | \
		while read i; do touch -r $$i.bak $$i; done

# need the texmf part visible...
pre-fake:
	mkdir -p ${PREFIX}/share/texmf
	lndir ${TRUEPREFIX}/share/texmf ${PREFIX}/share/texmf
	#	mktexlsr is too smart for its own good
	rm ${PREFIX}/share/texmf/ls-R
	cp ${TRUEPREFIX}/share/texmf/ls-R ${PREFIX}/share/texmf/ls-R

INSTALL_INFO=/usr/bin/install-info
SEPARATE_BUILD=concurrent

.include <bsd.port.mk>
