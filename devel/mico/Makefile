# $OpenBSD: Makefile,v 1.13 2009/06/28 22:00:34 sthen Exp $

COMMENT=	free and complete CORBA-compliant implementation

DISTNAME=	mico-2.3.6
PKGNAME=	$(DISTNAME)p4
CATEGORIES=	devel

# The build framework accommodates only a single shared lib extension.
SHARED_LIBS=	mico2.3.6	${LIB_VERSION} \
		micoaux2.3.6	${LIB_VERSION} \
		micocoss2.3.6	${LIB_VERSION} \
		micoir2.3.6	${LIB_VERSION} \
		micox2.3.6	${LIB_VERSION}
LIB_VERSION=	3.0

HOMEPAGE=	http://www.mico.org/
MASTER_SITES=	${HOMEPAGE}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m ncurses readline stdc++

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LIB_VERSION=${LIB_VERSION}
CONFIGURE_ARGS+=	--disable-optimize

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin

FAKE_FLAGS=		prefix="${WRKINST}${PREFIX}"
WRKDIST=        	${WRKDIR}/mico
NO_REGRESS=		Yes

FLAVORS=		ssl	# qt gtk tcl
FLAVOR?=

.if ${FLAVOR:L:Mssl}
CONFIGURE_ARGS+=	--with-ssl
WANTLIB+=		crypto ssl
.endif

LIB_DEPENDS+=		elf::devel/libelf

# XXX no Qt parts built
#.if ${FLAVOR:L:Mqt}
#LIB_DEPENDS+=		qt.2::x11/qt2
#CONFIGURE_ARGS+=	--with-qt
#.endif

# XXX no GTK parts built
#.if ${FLAVOR:L:Mgtk}
#LIB_DEPENDS+=		gtk.1.2::x11/gtk+
#CONFIGURE_ARGS+=	--with-gtk
#.endif

# XXX wrong dependency
#.if ${FLAVOR:L:Mtcl}
#LIB_DEPENDS+=		tcl.8::lang/tcl
#CONFIGURE_ARGS+=	--with-tcl
#.endif

pre-build:
	cd ${WRKSRC}/idl && ${GMAKE} generate

.include <bsd.port.mk>
