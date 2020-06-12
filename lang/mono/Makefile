# $OpenBSD: Makefile,v 1.138 2020/06/12 15:59:39 robert Exp $

USE_WXNEEDED=	Yes

COMMENT=	cross platform, open source .NET developement framework

V=		6.8.0.123

DISTNAME=	mono-${V}

CATEGORIES=	lang devel

# these library versions must be kept in sync
SHARED_LIBS +=  mono-2.0		1.0	# .0.0
SHARED_LIBS +=  monoboehm-2.0           1.0     # .1.0
SHARED_LIBS +=  monosgen-2.0            1.0	# .0.0

SHARED_LIBS +=  mono-native		0.0	# .0.0
SHARED_LIBS +=  mono-profiler-aot	1.0	# .0.0
SHARED_LIBS +=  mono-profiler-coverage	0.0	# .0.0
SHARED_LIBS +=  mono-profiler-log	0.0	# .0.0

HOMEPAGE=	http://www.mono-project.com/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# GPLv2, LGPL, MIT X11, MPL
PERMIT_PACKAGE=	Yes

WANTLIB=	c m pthread z

MASTER_SITES=	https://download.mono-project.com/sources/mono/
EXTRACT_SUFX=	.tar.xz

MODULES=	lang/mono \
		lang/python

MODMONO_DEPS=	No

USE_GMAKE=	Yes

USE_LIBTOOL=	gnu
SUBST_VARS=	LIBTOOL

BUILD_DEPENDS=	devel/bison \
		devel/cmake \
		devel/gettext,-tools \
		lang/gawk \
		shells/bash \
		x11/libgdiplus \
		${MODGNU_AUTOMAKE_DEPENDS}

RUN_DEPENDS=	x11/libgdiplus

TEST_DEPENDS=	lang/python/${MODPY_VERSION}

CONFIGURE_STYLE=autoreconf
AUTOCONF_VERSION=2.69
AUTOMAKE_VERSION=1.15

CONFIGURE_ENV=	ac_cv_header_execinfo_h=no

.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ENV+=	CFLAGS="-march=i586"
.endif

CONFIGURE_ARGS=	--with-gc=included \
		--with-tls=pthread \
		--enable-btls \
		--disable-quiet-build \
		--disable-shared-handles \
		--without-sigaltstack

TEST_TARGET=check

DLLMAP_FILES=	mcs/class/System.Windows.Forms/System.Windows.Forms/MimeIcon.cs \
		mcs/tools/mono-shlib-cop/mono-shlib-cop.exe.config \
		mcs/class/System/System.IO/FAMWatcher.cs \
		mcs/class/System.Windows.Forms/System.Windows.Forms/X11DesktopColors.cs \
		mcs/class/Mono.Cairo/Samples/gtk/OldAndBusted.cs \
		data/config

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples

pre-configure:
	${SUBST_CMD} ${WRKSRC}/runtime/mono-wrapper.in \
		${WRKSRC}/runtime/monodis-wrapper.in
	sed -i -e 's,^prefix=.*,prefix=\@prefix\@,g;' \
		-e 's,^exec_prefix=.*,exec_prefix=\@prefix\@,g' \
		${WRKSRC}/data/*.pc.in
	sed -i -e 's,/usr/bin/env python,${MODPY_BIN},g' \
		${WRKSRC}/mono/tests/gc-descriptors/gen-descriptor-tests.py


	@ln -fs /usr/local/bin/bash ${WRKDIR}/bin/bash
	@ln -fs /usr/local/bin/gawk ${WRKDIR}/bin/gawk
	@ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python

# Force using the internal mcs compiler
pre-build:
	@mkdir -p ${WRKSRC}/mcs/build/deps
	@touch ${WRKSRC}/mcs/build/deps/use-monolite

# XXX stop mono failing the first time
# make _tmpinst more available
post-build:
	for i in ${WRKBUILD}/runtime/_tmpinst/bin/*; do \
		ln -fs $$i ${WRKDIR}/bin; \
	done

.include <bsd.port.mk>
