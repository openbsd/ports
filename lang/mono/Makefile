# $OpenBSD: Makefile,v 1.10 2009/07/21 13:51:41 jasper Exp $

ONLY_FOR_ARCHS=	amd64 i386

COMMENT=	cross platform, open source .NET developement framework

DISTNAME=	mono-2.0
PKGNAME=	${DISTNAME}p6
CATEGORIES=	lang devel

SHARED_LIBS=	mono-profiler-aot	0.0 \
		mono-profiler-cov	0.0 \
		mono			0.0

HOMEPAGE=	http://www.mono-project.com/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# GPLv2, LGPL, MIT X11, MPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

WANTLIB=	c glib-2.0 gmodule-2.0 gthread-2.0 \
		m pcre pthread z

MASTER_SITES=	ftp://ftp.novell.com/pub/mono/sources/mono/
EXTRACT_SUFX=	.tar.bz2

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

MODULES=	devel/gettext \
		lang/mono
BUILD_DEPENDS=	:bison-*:devel/bison \
		${RUN_DEPENDS}
RUN_DEPENDS=	::x11/libgdiplus
LIB_DEPENDS=	gc::devel/boehm-gc

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include"
CONFIGURE_ARGS=	--with-gc=boehm --with-glib=system --with-tls=pthread \
		--with-jit=yes --with-interp=no --with-sigaltstack=no \
		--with-libgdiplus=installed --disable-shared-handles

REGRESS_TARGET=check

DLLMAP_FILES=	mcs/class/Managed.Windows.Forms/System.Windows.Forms/MimeIcon.cs \
		mcs/tools/mono-shlib-cop/mono-shlib-cop.exe.config

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples

.include <bsd.port.mk>
