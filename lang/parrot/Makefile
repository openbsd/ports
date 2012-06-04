# $OpenBSD: Makefile,v 1.22 2012/06/04 15:59:36 pascal Exp $

SHARED_ONLY =	Yes

COMMENT=	virtual machine designed for interpreted languages

V=		4.3.0
REVISION=	0
DISTNAME=	parrot-$V
CATEGORIES=	lang perl6
SHARED_LIBS=	parrot	5.0

HOMEPAGE=	http://www.parrot.org/

MAINTAINER =	Pascal Stumpf <Pascal.Stumpf@cubes.de>

MASTER_SITES=	ftp://ftp.parrot.org/pub/parrot/releases/supported/$V/

# Artistic2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL GLU c glut gmp icudata icuuc m ncurses pthread
WANTLIB += readline stdc++ util z

BUILD_DEPENDS=		graphics/glew \
			devel/pcre
LIB_DEPENDS=		textproc/icu4c \
			devel/gmp \
			graphics/freeglut
REGRESS_DEPENDS=	devel/p5-TAP-Harness-Multiple \
			devel/p5-Test-Perl-Critic

CONFIGURE_SCRIPT=	/usr/bin/perl Configure.pl
CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+= \
	--prefix="${PREFIX}" \
	--cc="${CC}" \
	--ccflags="-I${LOCALBASE}/include -I${X11BASE}/include" \
	--optimize="${CFLAGS}" \
	--link="${CXX}" \
	--linkflags="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
	--ld="${CXX}" \
	--ldflags="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
	--parrot_is_shared \
	--icu-config="${LOCALBASE}/bin/icu-config"

CONFIGURE_ENV =		LIBparrot_VERSION=${LIBparrot_VERSION}

MAKE_ENV=		LIBparrot_VERSION=${LIBparrot_VERSION}

INSTALL_TARGET =	install install-doc
REGRESS_TARGET=		fulltest

SUBST_VARS +=		V

pre-configure:
	${SUBST_CMD} ${WRKSRC}/config/init/hints/openbsd.pm

post-install:
	${INSTALL_DATA} ${WRKSRC}/blib/lib/libparrot.so.${LIBparrot_VERSION} \
		${PREFIX}/lib

.include <bsd.port.mk>
