# $OpenBSD: Makefile,v 1.36 2009/08/12 14:12:22 ajacoutot Exp $

COMMENT-main=		Motif toolkit
COMMENT-demos=		Motif toolkit demos

VERSION=		2.3.0
DISTNAME=		openmotif-${VERSION}
PKGNAME-main=		openmotif-${VERSION}p2
PKGNAME-demos=		openmotif-demos-${VERSION}p3

SHARED_LIBS=		Mrm	4.0	\
			Uil	4.0	\
			Xm	4.0

CATEGORIES=		x11
#MASTER_SITES=		http://ftp.ics.com/openmotif/2.3/${VERSION}/
MASTER_SITES=		ftp://ftp.openbsd.org/pub/OpenBSD/distfiles/openmotif/
DIST_SUBDIR=		openmotif

MAINTAINER=		Marc Balmer <mbalmer@openbsd.org>

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
# respect PREFIX
	@cd ${WRKSRC}/config/cf && \
	    perl -pi -e "s|%%PREFIX%%|${PREFIX}|g" host.def Motif.tmpl \
	    config.cf

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

MODULES=		converters/libiconv

LIB_DEPENDS-demos=	Xm.>=4.0,Mrm.>=4.0::x11/openmotif \
			${MODLIBICONV_LIB_DEPENDS}
WANTLIB=		ICE SM X11 Xext Xp Xt c Xau Xdmcp Xft Xmu Xrender \
			expat fontconfig freetype z pthread-stubs xcb
WANTLIB-demos=		${WANTLIB} m

# XXX  Large, complicated, only partially automated test suite available
NO_REGRESS=	Yes

.include <bsd.port.mk>
