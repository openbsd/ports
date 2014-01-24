# $OpenBSD: Makefile,v 1.29 2014/01/24 19:56:55 espie Exp $

SHARED_ONLY =	Yes

COMMENT=	virtual machine designed for interpreted languages

V=		5.4.0
REVISION=	1
DISTNAME=	parrot-$V
CATEGORIES=	lang perl6
SHARED_LIBS=	parrot	8.0

HOMEPAGE=	http://www.parrot.org/

MAINTAINER =	Pascal Stumpf <Pascal.Stumpf@cubes.de>

MASTER_SITES=	ftp://ftp.parrot.org/pub/parrot/releases/all/$V/

# Artistic2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL GLU c glut gmp icudata icuuc m ncurses pthread
WANTLIB += readline stdc++ util z ffi

BUILD_DEPENDS=		graphics/glew \
			devel/pcre
LIB_DEPENDS=		textproc/icu4c \
			devel/gmp \
			graphics/freeglut \
			devel/libffi
TEST_DEPENDS=	devel/p5-TAP-Harness-Multiple \
			devel/p5-Test-Perl-Critic

CONFIGURE_SCRIPT=	/usr/bin/perl Configure.pl
CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+= \
	--prefix="${PREFIX}" \
	--cc="${CC}" \
	--ccflags="-I${LOCALBASE}/include -I${X11BASE}/include -pthread" \
	--optimize="${CFLAGS}" \
	--link="${CXX}" \
	--linkflags="-L${LOCALBASE}/lib -L${X11BASE}/lib -pthread" \
	--ld="${CXX}" \
	--ldflags="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
	--parrot_is_shared \
	--icu-config="${LOCALBASE}/bin/icu-config"

CONFIGURE_ENV =		LIBparrot_VERSION=${LIBparrot_VERSION}

MAKE_ENV=		LIBparrot_VERSION=${LIBparrot_VERSION}

ALL_TARGET =		all docs
INSTALL_TARGET =	install install-doc
TEST_TARGET=		fulltest

SUBST_VARS +=		V

pre-configure:
	${SUBST_CMD} ${WRKSRC}/config/init/hints/openbsd.pm

post-install:
	${INSTALL_DATA} ${WRKSRC}/blib/lib/libparrot.so.${LIBparrot_VERSION} \
		${PREFIX}/lib
	chmod a+r ${PREFIX}/share/doc/parrot/$V/pod/packfile-c.pod

.include <bsd.port.mk>
