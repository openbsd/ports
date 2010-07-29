# $OpenBSD: Makefile,v 1.2 2010/07/29 10:58:02 sebastia Exp $

SHARED_ONLY =	Yes

COMMENT =	in-memory channels for Tcl, chunks and fifos

DISTNAME =	memchan-2.2.1
SHARED_LIBS =	Memchan221	0.0

CATEGORIES =	misc

HOMEPAGE =	http://memchan.sourceforge.net/

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=memchan/}

MODULES =	lang/tcl
BUILD_DEPENDS =	${MODTCL_BUILD_DEPENDS} \
		::devel/tcllib
RUN_DEPENDS =	${MODTCL_RUN_DEPENDS}

SEPARATE_BUILD =	simple
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS	=	${CONFIGURE_SHARED} \
			--with-tcl=${MODTCL_LIBDIR} \
			--with-tcl-include-dir=${MODTCL_INCDIR} \
			--with-tcl-lib-dir=${MODTCL_LIBDIR} \
			--prefix=${DESTDIR}${PREFIX}
REGRESS_TARGET =	test
SUBST_VARS =		LIBMemchan221_VERSION

pre-configure:
	${INSTALL_DATA} ${WRKSRC}/doc/random.man  ${WRKSRC}/doc/mchan-random.man
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
