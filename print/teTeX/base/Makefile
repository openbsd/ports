# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.6 2000/03/24 23:28:31 espie Exp $

PKGNAME=	teTeX_base-1.0.7
CATEGORIES=	print/teTeX
NEED_VERSION=	 1.230
DIST_SUBDIR=	teTeX
MASTER_SITES=	${MASTER_SITE_TEX_CTAN}
MASTER_SITE_SUBDIR=	systems/unix/teTeX/1.0/distrib/sources
DISTFILES=	${TETEX_SRC} 
WRKDIST=${WRKDIR}/teTeX-1.0

PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_FTP=	Yes

TETEX_SRC=teTeX-src-1.0.7.tar.gz

RUN_DEPENDS=${PREFIX}/share/texmf/ls-R::print/teTeX/texmf

BUILD_DEPENDS=${PREFIX}/share/texmf/ls-R::print/teTeX/texmf

LIB_DEPENDS=png.1.3::graphics/png \
	Xaw3d.6.1::x11/Xaw3d

PNGDIR=${PREFIX}

GNU_CONFIGURE=Yes
FAKE=	Yes

CONFIGURE_ARGS+=--disable-multiplatform --without-texinfo \
	--with-system-ncurses --with-system-zlib --with-system-pnglib \
	--with-pnglib-libdir=${PNGDIR}/lib --with-pnglib-include=${PNGDIR}/include 
CONFIGURE_ENV=YACC=yacc

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

INSTALL_INFO=	/usr/bin/install-info
SEPARATE_BUILD=concurrent

.include <bsd.port.mk>
