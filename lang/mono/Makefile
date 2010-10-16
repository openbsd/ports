# $OpenBSD: Makefile,v 1.50 2010/10/16 13:21:20 robert Exp $

COMMENT=	cross platform, open source .NET developement framework

DISTNAME=	mono-2.8

CATEGORIES=	lang devel

SHARED_LIBS +=  mono-2.0		1.0	# .0.0
SHARED_LIBS +=  mono-profiler-iomap	0.0	# .0.0
SHARED_LIBS +=  monosgen-2.0		0.0	# .0.0
SHARED_LIBS +=  mono-profiler-aot	1.0	# .0.0
SHARED_LIBS +=  mono-profiler-cov	1.0	# .0.0

HOMEPAGE=	http://www.mono-project.com/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# GPLv2, LGPL, MIT X11, MPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

WANTLIB=	c iconv m pthread z stdc++

MASTER_SITES=	http://ftp.novell.com/pub/mono/sources/mono/
EXTRACT_SUFX=	.tar.bz2

MODULES=	lang/mono

MODMONO_DEPS=	No

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

SUBST_VARS=	LIBTOOL

MAKE_FLAGS=	EXTERNAL_MCS=false

BUILD_DEPENDS=	:bison-*:devel/bison \
		${RUN_DEPENDS}
RUN_DEPENDS=	::x11/libgdiplus
LIB_DEPENDS=	gc::devel/boehm-gc

AUTOCONF_VERSION=2.63
CONFIGURE_STYLE=autoconf
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-gc=boehm \
		--enable-quiet-build=no \
		--disable-shared-handles

REGRESS_TARGET=check

DLLMAP_FILES=	mcs/class/Managed.Windows.Forms/System.Windows.Forms/MimeIcon.cs \
		mcs/tools/mono-shlib-cop/mono-shlib-cop.exe.config \
		mcs/class/System/System.IO/FAMWatcher.cs \
		mcs/class/Managed.Windows.Forms/System.Windows.Forms/X11DesktopColors.cs \
		mcs/class/Mono.Cairo/Samples/gtk/OldAndBusted.cs \
		data/config

BASH_SCRIPTS=	mcs/class/Mono.WebBrowser/build-csproj2k5 \
		mcs/class/Managed.Windows.Forms/build-csproj \
		mcs/class/Managed.Windows.Forms/build-csproj2k5 \
		mcs/class/Mono.Cairo/Samples/x11/compile.sh \
		mcs/class/Mono.Cairo/Samples/gtk/compile.sh \
		mcs/class/Mono.Cairo/Samples/win32/compile.sh \
		mcs/class/Mono.Cairo/Samples/png/compile.sh \
		mcs/tools/tinderbox/tinderbox.sh \
		scripts/mono-find-requires.in \
		scripts/mono-find-provides.in \
		scripts/mono-test-install \
		mono/arch/arm/dpiops.sh

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples

post-patch:
	@cd ${WRKSRC}/eglib && \
		${SETENV} ${AUTOCONF_ENV} ${AUTOCONF} && \
		${SETENV} ${AUTOCONF_ENV} ${AUTOHEADER}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/runtime/mono-wrapper.in \
		${WRKSRC}/runtime/monodis-wrapper.in
	for i in ${BASH_SCRIPTS}; do \
		perl -pi -e 's,/bin/bash,/bin/sh,' ${WRKSRC}/$${i}; \
	done

.include <bsd.port.mk>
