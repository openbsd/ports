# $OpenBSD: Makefile,v 1.61 2015/06/06 14:19:35 espie Exp $

COMMENT-main=		Motif toolkit
COMMENT-demos=		Motif toolkit demos

VERSION=		2.3.4
REVISION-main=		1
DISTNAME=		motif-${VERSION}
EXTRACT_SUFX=		-src.tgz
PKGNAME-main=		openmotif-${VERSION}
PKGNAME-demos=		openmotif-demos-${VERSION}

SHARED_LIBS=		Mrm	4.1	\
			Uil	5.0	\
			Xm	6.0

CATEGORIES=		x11
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=motif/}
DIST_SUBDIR=		openmotif

HOMEPAGE=		http://motif.ics.com/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MULTI_PACKAGES=		-demos -main

USE_GROFF=		Yes
CONFIGURE_STYLE=	gnu
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.12
CONFIGURE_ARGS=		--enable-themes \
			--enable-xft \
			--enable-jpeg \
			--disable-printing \
			--enable-png
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -lm"
MAKE_ENV=		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION}


MAKE_FLAGS=		SOMRMREV=${LIBMrm_VERSION}	\
			SOUILREV=${LIBUil_VERSION}	\
			SOXMREV=${LIBXm_VERSION}
FAKE_FLAGS+=		bindir=${PREFIX}/bin/

MODULES=		converters/libiconv

BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

LIB_DEPENDS=		graphics/jpeg \
			graphics/png
LIB_DEPENDS-demos=	x11/openmotif \
			${MODLIBICONV_LIB_DEPENDS} \
			${LIB_DEPENDS}
WANTLIB=		ICE SM X11 Xext Xt c Xft Xmu Xrender \
			expat fontconfig freetype m z xcb \
			jpeg png
WANTLIB-demos=		${WANTLIB} Xm Mrm

# XXX  Large, complicated, only partially automated test suite available
NO_TEST=	Yes

post-patch:
	cd ${WRKSRC}; AUTOCONF_VERSION=${AUTOCONF_VERSION} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

pre-configure:
# fix sections
	@cd ${WRKSRC}/doc/man/man1 && perl -pi -e "s|user cmd|1|" *.1
	@cd ${WRKSRC}/doc/man/man3 && perl -pi -e "s|library call|3|" *.3
# mwmrc is not a kernel interface!!
	@cd ${WRKSRC}/doc/man/man4 && perl -pi -e "s|special file|5|" *.4
	@cd ${WRKSRC}/doc/man/man5 && perl -pi -e "s|file formats|5|" *.5
	@mkdir -p ${WRKSRC}/imports/x11
	@cd ${WRKSRC}/imports/x11 && for i in bin include lib ; do \
	    if [ -f $$i ] ; then rm $$i; fi; \
	    ln -s ${X11BASE}/$$i $$i; \
	done

	${SUBST_CMD} ${WRKSRC}/config/cf/host.def \
		${WRKSRC}/config/cf/Motif.tmpl \
		${WRKSRC}/lib/Xm/Makefile.am

DOCS=BUGREPORT COPYING README RELEASE RELNOTES TODO

DOCDIR=${PREFIX}/share/doc/openmotif

post-install:
	@${INSTALL_DATA_DIR} ${DOCDIR}
	@for i in ${DOCS}; do ${INSTALL_DATA} ${WRKSRC}/$$i ${DOCDIR}; done
	@${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/config
	@${INSTALL_DATA} ${WRKSRC}/config/cf/Motif.rules \
	    ${PREFIX}/lib/X11/config/Motif.rules
	@${INSTALL_DATA} ${WRKSRC}/config/cf/Motif.tmpl \
	    ${PREFIX}/lib/X11/config/Motif.tmpl

.include <bsd.port.mk>
