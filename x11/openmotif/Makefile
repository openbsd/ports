# $OpenBSD: Makefile,v 1.38 2009/12/14 18:03:36 jasper Exp $

COMMENT-main=		Motif toolkit
COMMENT-demos=		Motif toolkit demos

VERSION=		2.3.2
DISTNAME=		openmotif-${VERSION}
PKGNAME-main=		openmotif-${VERSION}
PKGNAME-demos=		openmotif-demos-${VERSION}

SHARED_LIBS=		Mrm	4.1	\
			Uil	4.1	\
			Xm	5.0

CATEGORIES=		x11
#MASTER_SITES=		ftp://ftp.ics.com/openmotif/2.3/${VERSION}/
MASTER_SITES=		http://www.phil.uu.nl/~lievisse/distfiles/ \
			ftp://ftp.openbsd.org/pub/OpenBSD/distfiles/openmotif/
DIST_SUBDIR=		openmotif

HOMEPAGE=		http://www.opengroup.org/openmotif/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES= 	-demos -main

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-themes \
			--enable-xft

USE_LIBTOOL=		Yes

MAKE_FLAGS=		SOMRMREV=${LIBMrm_VERSION}	\
			SOUILREV=${LIBUil_VERSION}	\
			SOXMREV=${LIBXm_VERSION}
FAKE_FLAGS+=		bindir=${PREFIX}/bin/

MODULES=		converters/libiconv

LIB_DEPENDS-demos=	Xm.>=4.0,Mrm.>=4.0::x11/openmotif \
			${MODLIBICONV_LIB_DEPENDS}
WANTLIB=		ICE SM X11 Xext Xp Xt c Xau Xdmcp Xft Xrender \
			expat fontconfig freetype z pthread-stubs xcb
WANTLIB-demos=		${WANTLIB} m

# XXX  Large, complicated, only partially automated test suite available
NO_REGRESS=	Yes

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
		${WRKSRC}/lib/Xm/Makefile.in

DOCS=BUGREPORT COPYRIGHT.MOTIF LICENSE README RELEASE RELNOTES TODO
DOCDIR=${PREFIX}/share/doc/openmotif

post-install:
	@${INSTALL_DATA_DIR} ${DOCDIR}
	@for i in ${DOCS}; do ${INSTALL_DATA} ${WRKSRC}/$$i ${DOCDIR}; done
	@${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${DOCDIR}
	@${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/config
	@${INSTALL_DATA} ${WRKSRC}/config/cf/Motif.rules \
	    ${PREFIX}/lib/X11/config/Motif.rules
	@${INSTALL_DATA} ${WRKSRC}/config/cf/Motif.tmpl \
	    ${PREFIX}/lib/X11/config/Motif.tmpl

.include <bsd.port.mk>
