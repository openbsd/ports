# $OpenBSD: Makefile,v 1.80 2013/12/04 21:31:12 naddy Exp $

COMMENT=	cross platform, open source .NET developement framework

DISTNAME=	mono-2.10.9
REVISION=	3

CATEGORIES=	lang devel

SHARED_LIBS +=  mono-2.0		1.0	# .0.0
SHARED_LIBS +=  mono-profiler-iomap	0.0	# .0.0
SHARED_LIBS +=  monosgen-2.0		0.0	# .0.0
SHARED_LIBS +=  mono-profiler-aot	1.0	# .0.0
SHARED_LIBS +=  mono-profiler-log	0.0	# .0.0
SHARED_LIBS +=  mono-profiler-cov	1.0	# .0.0

HOMEPAGE=	http://www.mono-project.com/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# GPLv2, LGPL, MIT X11, MPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m pthread z stdc++

MASTER_SITES=	http://download.mono-project.com/sources/mono/ \
		http://ftp.novell.com/pub/mono/sources/mono/
EXTRACT_SUFX=	.tar.bz2

MODULES=	lang/mono \
		converters/libiconv

MODMONO_DEPS=	No

USE_GMAKE=	Yes
USE_GROFF =	Yes

SUBST_VARS=	LIBTOOL

BUILD_DEPENDS=	devel/bison \
		${RUN_DEPENDS}
RUN_DEPENDS=	x11/libgdiplus
LIB_DEPENDS=	devel/boehm-gc
WANTLIB +=	gc

AUTOCONF_VERSION=2.68
CONFIGURE_STYLE=autoconf
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		ac_cv_header_execinfo_h=no
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-gc=boehm \
		--enable-quiet-build=no \
		--disable-shared-handles

TEST_TARGET=check

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
	perl -pi -e 's,^prefix=.*,prefix=\@prefix\@,g;' \
		-e 's,^exec_prefix=.*,exec_prefix=\@prefix\@,g' \
		${WRKSRC}/data/*.pc.in

# Force using the internal mcs compiler
pre-build:
	@mkdir -p ${WRKSRC}/mcs/build/deps
	@touch ${WRKSRC}/mcs/build/deps/use-monolite

# XXX stop mono failing the first time
# make _tmpinst more available
post-build:
	for i in ${WRKBUILD}/runtime/_tmpinst/bin/*; do \
		ln -s $$i ${WRKDIR}/bin; \
	done

.include <bsd.port.mk>
