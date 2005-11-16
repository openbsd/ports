# $OpenBSD: Makefile,v 1.38 2005/11/16 19:22:57 sturm Exp $

COMMENT=	"themed window manager"

DISTNAME=	enlightenment-0.16.7.2
DOCS=		enlightenment-docs-0.16.7
THEMES=		enlightenment-theme-BlueSteel-0.16 \
		enlightenment-theme-BrushedMetal-Tigert-0.16 \
		enlightenment-theme-Ganymede-0.16 \
		enlightenment-theme-ShinyMetal-0.16

CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=enlightenment/} \
		ftp://ftp.squish.org/pub/enlightenment/enlightenment

DISTFILES=	${DISTNAME}.tar.gz \
		${DOCS}.tar.gz \
		enlightenment-theme-BlueSteel-0.16.tar.gz \
		enlightenment-theme-BrushedMetal-Tigert-0.16.tar.gz \
		enlightenment-theme-Ganymede-0.16.tar.gz \
		enlightenment-theme-ShinyMetal-0.16.tar.gz

HOMEPAGE=	http://www.enlightenment.org/

MAINTAINER=	Paul Wang <op21@squish.org>

# X11
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-fsstd --sysconfdir=${SYSCONFDIR}
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

LIB_DEPENDS=	esd.2::audio/esound \
		Imlib2.2::graphics/imlib2
WANTLIB=	ICE SM X11 Xext Xinerama Xxf86vm \
		audiofile bz2 c iconv freetype intl jpeg \
		ltdl m png tiff ungif z
MODULES=	converters/libiconv \
		devel/gettext

post-configure:
	@cd ${WRKDIR}/${DOCS} && ${SETENV} ${CONFIGURE_ENV} ${SCRIPTS_ENV} \
	    ${SH} ./configure ${CONFIGURE_ARGS}
	@for i in ${THEMES}; do \
		cd ${WRKDIR}/$$i && \
		    ${SETENV} ${CONFIGURE_ENV} ${SCRIPTS_ENV} ${SH} \
		    ./configure ${CONFIGURE_ARGS}; \
	done

post-install:
	@cd ${WRKDIR}/${DOCS} && ${SUDO} ${SETENV} \
	    ${MAKE_ENV} ${_FAKE_SETUP} ${MAKE_PROGRAM} ${FAKE_FLAGS} \
	    -f ${MAKE_FILE} ${FAKE_TARGET}
	@for i in ${THEMES}; do \
		cd ${WRKDIR}/$$i && \
		    ${SUDO} ${SETENV} ${MAKE_ENV} \
		    ${_FAKE_SETUP} ${MAKE_PROGRAM} ${FAKE_FLAGS} \
		    -f ${MAKE_FILE} ${FAKE_TARGET}; \
	done

.include <bsd.port.mk>
